accuracy = 1e-08
init_random = 42
name = 'LinearWord'
data_type = 'ushort'
km_train = [1.46677087, 1.04255773, 1.01567318, 0.82294849, 1.00426288, 1.24012789, 0.987381883, 0.699779751, 0.993477798, 0.684618117, 1.04365187;1.04255773, 1.09632682, 0.75651865, 0.667580817, 1.03489876, 0.945179396, 0.889847247, 0.625690941, 0.7380746, 0.664923623, 0.846238011;1.01567318, 0.75651865, 0.883282416, 0.563325044, 0.773868561, 0.862493783, 0.711190053, 0.45391119, 0.642884547, 0.517058615, 0.73948135;0.82294849, 0.667580817, 0.563325044, 0.699310835, 0.698529307, 0.774650089, 0.73635524, 0.498145648, 0.724788632, 0.454380107, 0.745264654;1.00426288, 1.03489876, 0.773868561, 0.698529307, 1.16572647, 0.980191829, 0.762145648, 0.630849023, 0.770273535, 0.710877442, 0.788404973;1.24012789, 0.945179396, 0.862493783, 0.774650089, 0.980191829, 1.16088099, 0.903445826, 0.655388988, 0.887346359, 0.695715808, 0.98191119;0.987381883, 0.889847247, 0.711190053, 0.73635524, 0.762145648, 0.903445826, 1.04584014, 0.539410302, 0.760269982, 0.536753108, 0.948618117;0.699779751, 0.625690941, 0.45391119, 0.498145648, 0.630849023, 0.655388988, 0.539410302, 0.528156306, 0.595680284, 0.403893428, 0.660390764;0.993477798, 0.7380746, 0.642884547, 0.724788632, 0.770273535, 0.887346359, 0.760269982, 0.595680284, 1.02989698, 0.383417407, 0.980973357;0.684618117, 0.664923623, 0.517058615, 0.454380107, 0.710877442, 0.695715808, 0.536753108, 0.403893428, 0.383417407, 0.624284192, 0.382792185;1.04365187, 0.846238011, 0.73948135, 0.745264654, 0.788404973, 0.98191119, 0.948618117, 0.660390764, 0.980973357, 0.382792185, 1.29952398]
data_train = ['38', '12', '16', '7', '14', '37', '1', '9', '7', '29', '0';'25', '0', '14', '20', '9', '25', '9', '31', '38', '3', '39';'12', '35', '9', '18', '29', '26', '32', '25', '2', '28', '35';'36', '14', '41', '17', '1', '20', '29', '6', '8', '3', '30';'26', '31', '30', '21', '32', '29', '40', '12', '16', '36', '9';'18', '27', '24', '2', '30', '20', '9', '10', '29', '3', '39';'35', '41', '12', '29', '41', '29', '28', '26', '29', '14', '29';'0', '4', '4', '29', '18', '9', '6', '7', '22', '12', '6';'40', '39', '33', '15', '41', '24', '11', '23', '21', '25', '4';'31', '10', '26', '22', '27', '33', '21', '3', '22', '9', '27';'33', '21', '6', '24', '0', '23', '41', '13', '41', '0', '38']
feature_class = 'simple'
data_test = ['19', '12', '34', '24', '3', '35', '31', '24', '13', '16', '14', '2', '14', '17', '9', '7', '31';'0', '18', '2', '41', '7', '8', '4', '15', '15', '33', '13', '35', '4', '24', '7', '25', '24';'18', '12', '32', '5', '11', '23', '19', '2', '16', '9', '10', '1', '36', '8', '26', '18', '39';'10', '28', '0', '21', '38', '35', '21', '16', '20', '20', '21', '17', '28', '32', '35', '38', '37';'40', '36', '25', '40', '16', '5', '6', '15', '34', '13', '31', '37', '1', '22', '0', '10', '28';'33', '24', '36', '5', '11', '38', '23', '16', '26', '4', '17', '25', '22', '6', '24', '21', '24';'3', '1', '13', '18', '38', '20', '6', '38', '25', '15', '20', '2', '3', '2', '11', '15', '19';'24', '3', '15', '21', '18', '28', '4', '24', '36', '12', '29', '22', '4', '13', '9', '25', '41';'17', '24', '39', '8', '14', '28', '21', '37', '1', '17', '25', '7', '29', '19', '17', '20', '19';'5', '9', '11', '9', '17', '7', '9', '6', '41', '12', '3', '17', '35', '25', '23', '30', '21';'3', '23', '25', '6', '40', '11', '24', '5', '27', '28', '18', '28', '5', '6', '31', '31', '2']
km_test = [0.620689165, 0.853271758, 0.969875666, 0.829982238, 0.959715808, 0.981598579, 0.774181172, 0.895005329, 0.970657194, 0.808412078, 0.817790409, 0.748390764, 0.782934281, 0.777932504, 0.831857904, 0.99894849, 1.07538188;0.644603908, 0.669300178, 0.941584369, 0.544255773, 0.770898757, 0.816071048, 0.595992895, 0.741044405, 0.771680284, 0.520809947, 0.711346359, 0.518934281, 0.651793961, 0.473136767, 0.654451155, 0.714159858, 0.892035524;0.579737123, 0.71025222, 0.689776199, 0.628035524, 0.659452931, 0.76589698, 0.543161634, 0.634756661, 0.73948135, 0.527374778, 0.634912966, 0.608184725, 0.665705151, 0.654138544, 0.625222025, 0.764646536, 0.889847247;0.430309059, 0.494863233, 0.576767318, 0.606152753, 0.708220249, 0.597868561, 0.398110124, 0.582706927, 0.800127886, 0.551602131, 0.605527531, 0.577548845, 0.45250444, 0.496269982, 0.531282416, 0.724476021, 0.812632327;0.69634103, 0.609591474, 0.937989343, 0.623346359, 0.659452931, 0.81669627, 0.522998224, 0.808724689, 0.858117229, 0.498614565, 0.714941385, 0.554415631, 0.676021314, 0.527062167, 0.567232682, 0.707751332, 0.984255773;0.646479574, 0.742138544, 0.933300178, 0.791062167, 0.796689165, 0.888753108, 0.681179396, 0.76730373, 0.973001776, 0.703218472, 0.737136767, 0.706031972, 0.730259325, 0.692277087, 0.725882771, 0.885470693, 1.07975844;0.535346359, 0.698373002, 0.709470693, 0.618969805, 0.872497336, 0.630536412, 0.520028419, 0.527843694, 0.895474245, 0.596461812, 0.666330373, 0.67477087, 0.565669627, 0.541598579, 0.693683837, 0.811225577, 0.846238011;0.341058615, 0.426870337, 0.551133215, 0.495801066, 0.477669627, 0.517683837, 0.36137833, 0.509087034, 0.495332149, 0.46469627, 0.467040853, 0.4229627, 0.389669627, 0.366692718, 0.407957371, 0.525811723, 0.641321492;0.476888099, 0.629598579, 0.721349911, 0.669769094, 0.780589698, 0.694934281, 0.503772647, 0.674927176, 0.890628774, 0.677740675, 0.674614565, 0.783090586, 0.462507993, 0.526436945, 0.626472469, 0.850927176, 0.788248668;0.535190053, 0.456568384, 0.677115453, 0.509868561, 0.37357016, 0.540973357, 0.395296625, 0.505179396, 0.532689165, 0.350436945, 0.505648313, 0.354657194, 0.428589698, 0.403111901, 0.325271758, 0.406238011, 0.730884547;0.488454707, 0.700561279, 0.734166963, 0.642415631, 0.877811723, 0.806692718, 0.600056838, 0.568952043, 0.960184725, 0.693683837, 0.632724689, 0.775119005, 0.701030195, 0.5819254, 0.845456483, 0.985818828, 0.955808171]
data_class = 'rand'
feature_type = 'Word'
