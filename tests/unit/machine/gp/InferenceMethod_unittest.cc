/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Written (W) 2013 Heiko Strathmann
 * Written (W) 2014 Roman Votyakov
 */

#include <shogun/lib/config.h>

#ifdef HAVE_EIGEN3

#include <shogun/labels/BinaryLabels.h>
#include <shogun/features/DenseFeatures.h>
#include <shogun/kernel/GaussianKernel.h>
#include <shogun/machine/gp/SingleLaplacianInferenceMethod.h>
#include <shogun/machine/gp/EPInferenceMethod.h>
#include <shogun/machine/gp/ZeroMean.h>
#include <shogun/machine/gp/LogitLikelihood.h>
#include <gtest/gtest.h>

using namespace shogun;

TEST(InferenceMethod,get_marginal_likelihood_estimate_logit_laplace)
{
	index_t n=2;
	index_t d=1;

	SGMatrix<float64_t> feat_train(d, n);
	SGVector<float64_t> lab_train(n);

	feat_train(0,0)=1;
	feat_train(0,1)=-1;
	lab_train[0]=1;
	lab_train[1]=-1;

	CDenseFeatures<float64_t>* features_train=new CDenseFeatures<float64_t>(feat_train);
	CBinaryLabels* labels_train=new CBinaryLabels(lab_train);

	CGaussianKernel* kernel=new CGaussianKernel(10, 8);
	CZeroMean* mean=new CZeroMean();
	CLogitLikelihood* likelihood=new CLogitLikelihood();
	CSingleLaplacianInferenceMethod* inf=new CSingleLaplacianInferenceMethod(kernel,
			features_train,	mean, labels_train, likelihood);
	inf->set_scale(2.0);

	/* sample estimate and compare against a number from my python
	 * implementation, and also against the approximate marginal
	 * likelihood. Since this is random, use low accuracy. */
	float64_t sample=inf->get_marginal_likelihood_estimate(100000);
	EXPECT_NEAR(sample, -1.67990517588, 0.3);
	EXPECT_NEAR(sample, -inf->get_negative_log_marginal_likelihood(), 0.3);

	SG_UNREF(inf);
}

TEST(InferenceMethod,get_marginal_likelihood_estimate_logit_ep)
{
	index_t n=2;
	index_t d=1;

	SGMatrix<float64_t> feat_train(d, n);
	SGVector<float64_t> lab_train(n);

	feat_train(0,0)=1;
	feat_train(0,1)=-1;
	lab_train[0]=1;
	lab_train[1]=-1;

	CDenseFeatures<float64_t>* features_train=new CDenseFeatures<float64_t>(feat_train);
	CBinaryLabels* labels_train=new CBinaryLabels(lab_train);

	CGaussianKernel* kernel=new CGaussianKernel(10, 8);
	CZeroMean* mean=new CZeroMean();
	CLogitLikelihood* likelihood=new CLogitLikelihood();
	CEPInferenceMethod* inf=new CEPInferenceMethod(kernel, features_train, mean,
			labels_train, likelihood);
	inf->set_scale(2.0);

	// sample estimate and compare against the approximate marginal
	// likelihood. Since this is random, use low accuracy.
	float64_t sample=inf->get_marginal_likelihood_estimate(100000);
	EXPECT_NEAR(sample, -inf->get_negative_log_marginal_likelihood(), 1E-2);

	SG_UNREF(inf);
}

#endif // HAVE_EIGEN3
