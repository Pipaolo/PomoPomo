// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_task.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetLocalTaskCollection on Isar {
  IsarCollection<LocalTask> get localTasks => getCollection();
}

const LocalTaskSchema = CollectionSchema(
  name: 'LocalTask',
  schema:
      '{"name":"LocalTask","idName":"id","properties":[{"name":"content","type":"String"},{"name":"isCompleted","type":"Bool"},{"name":"pomodoroCount","type":"Long"},{"name":"title","type":"String"},{"name":"totalPomodoroCount","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'content': 0,
    'isCompleted': 1,
    'pomodoroCount': 2,
    'title': 3,
    'totalPomodoroCount': 4
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _localTaskGetId,
  setId: _localTaskSetId,
  getLinks: _localTaskGetLinks,
  attachLinks: _localTaskAttachLinks,
  serializeNative: _localTaskSerializeNative,
  deserializeNative: _localTaskDeserializeNative,
  deserializePropNative: _localTaskDeserializePropNative,
  serializeWeb: _localTaskSerializeWeb,
  deserializeWeb: _localTaskDeserializeWeb,
  deserializePropWeb: _localTaskDeserializePropWeb,
  version: 3,
);

int? _localTaskGetId(LocalTask object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _localTaskSetId(LocalTask object, int id) {
  object.id = id;
}

List<IsarLinkBase> _localTaskGetLinks(LocalTask object) {
  return [];
}

void _localTaskSerializeNative(
    IsarCollection<LocalTask> collection,
    IsarRawObject rawObj,
    LocalTask object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.content;
  final _content = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_content.length) as int;
  final value1 = object.isCompleted;
  final _isCompleted = value1;
  final value2 = object.pomodoroCount;
  final _pomodoroCount = value2;
  final value3 = object.title;
  final _title = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_title.length) as int;
  final value4 = object.totalPomodoroCount;
  final _totalPomodoroCount = value4;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _content);
  writer.writeBool(offsets[1], _isCompleted);
  writer.writeLong(offsets[2], _pomodoroCount);
  writer.writeBytes(offsets[3], _title);
  writer.writeLong(offsets[4], _totalPomodoroCount);
}

LocalTask _localTaskDeserializeNative(IsarCollection<LocalTask> collection,
    int id, IsarBinaryReader reader, List<int> offsets) {
  final object = LocalTask();
  object.content = reader.readString(offsets[0]);
  object.id = id;
  object.isCompleted = reader.readBool(offsets[1]);
  object.pomodoroCount = reader.readLong(offsets[2]);
  object.title = reader.readString(offsets[3]);
  object.totalPomodoroCount = reader.readLong(offsets[4]);
  return object;
}

P _localTaskDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _localTaskSerializeWeb(
    IsarCollection<LocalTask> collection, LocalTask object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'content', object.content);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'isCompleted', object.isCompleted);
  IsarNative.jsObjectSet(jsObj, 'pomodoroCount', object.pomodoroCount);
  IsarNative.jsObjectSet(jsObj, 'title', object.title);
  IsarNative.jsObjectSet(
      jsObj, 'totalPomodoroCount', object.totalPomodoroCount);
  return jsObj;
}

LocalTask _localTaskDeserializeWeb(
    IsarCollection<LocalTask> collection, dynamic jsObj) {
  final object = LocalTask();
  object.content = IsarNative.jsObjectGet(jsObj, 'content') ?? '';
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.isCompleted = IsarNative.jsObjectGet(jsObj, 'isCompleted') ?? false;
  object.pomodoroCount =
      IsarNative.jsObjectGet(jsObj, 'pomodoroCount') ?? double.negativeInfinity;
  object.title = IsarNative.jsObjectGet(jsObj, 'title') ?? '';
  object.totalPomodoroCount =
      IsarNative.jsObjectGet(jsObj, 'totalPomodoroCount') ??
          double.negativeInfinity;
  return object;
}

P _localTaskDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'content':
      return (IsarNative.jsObjectGet(jsObj, 'content') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'isCompleted':
      return (IsarNative.jsObjectGet(jsObj, 'isCompleted') ?? false) as P;
    case 'pomodoroCount':
      return (IsarNative.jsObjectGet(jsObj, 'pomodoroCount') ??
          double.negativeInfinity) as P;
    case 'title':
      return (IsarNative.jsObjectGet(jsObj, 'title') ?? '') as P;
    case 'totalPomodoroCount':
      return (IsarNative.jsObjectGet(jsObj, 'totalPomodoroCount') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _localTaskAttachLinks(IsarCollection col, int id, LocalTask object) {}

extension LocalTaskQueryWhereSort
    on QueryBuilder<LocalTask, LocalTask, QWhere> {
  QueryBuilder<LocalTask, LocalTask, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension LocalTaskQueryWhere
    on QueryBuilder<LocalTask, LocalTask, QWhereClause> {
  QueryBuilder<LocalTask, LocalTask, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<LocalTask, LocalTask, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<LocalTask, LocalTask, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<LocalTask, LocalTask, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension LocalTaskQueryFilter
    on QueryBuilder<LocalTask, LocalTask, QFilterCondition> {
  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> contentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> contentGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> contentLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> contentBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'content',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> contentContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> contentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'content',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> isCompletedEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isCompleted',
      value: value,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition>
      pomodoroCountEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'pomodoroCount',
      value: value,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition>
      pomodoroCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'pomodoroCount',
      value: value,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition>
      pomodoroCountLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'pomodoroCount',
      value: value,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition>
      pomodoroCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pomodoroCount',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'title',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'title',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition>
      totalPomodoroCountEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'totalPomodoroCount',
      value: value,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition>
      totalPomodoroCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'totalPomodoroCount',
      value: value,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition>
      totalPomodoroCountLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'totalPomodoroCount',
      value: value,
    ));
  }

  QueryBuilder<LocalTask, LocalTask, QAfterFilterCondition>
      totalPomodoroCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'totalPomodoroCount',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension LocalTaskQueryLinks
    on QueryBuilder<LocalTask, LocalTask, QFilterCondition> {}

extension LocalTaskQueryWhereSortBy
    on QueryBuilder<LocalTask, LocalTask, QSortBy> {
  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> sortByContent() {
    return addSortByInternal('content', Sort.asc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> sortByContentDesc() {
    return addSortByInternal('content', Sort.desc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> sortByIsCompleted() {
    return addSortByInternal('isCompleted', Sort.asc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> sortByIsCompletedDesc() {
    return addSortByInternal('isCompleted', Sort.desc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> sortByPomodoroCount() {
    return addSortByInternal('pomodoroCount', Sort.asc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> sortByPomodoroCountDesc() {
    return addSortByInternal('pomodoroCount', Sort.desc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> sortByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> sortByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> sortByTotalPomodoroCount() {
    return addSortByInternal('totalPomodoroCount', Sort.asc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy>
      sortByTotalPomodoroCountDesc() {
    return addSortByInternal('totalPomodoroCount', Sort.desc);
  }
}

extension LocalTaskQueryWhereSortThenBy
    on QueryBuilder<LocalTask, LocalTask, QSortThenBy> {
  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> thenByContent() {
    return addSortByInternal('content', Sort.asc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> thenByContentDesc() {
    return addSortByInternal('content', Sort.desc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> thenByIsCompleted() {
    return addSortByInternal('isCompleted', Sort.asc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> thenByIsCompletedDesc() {
    return addSortByInternal('isCompleted', Sort.desc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> thenByPomodoroCount() {
    return addSortByInternal('pomodoroCount', Sort.asc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> thenByPomodoroCountDesc() {
    return addSortByInternal('pomodoroCount', Sort.desc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> thenByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> thenByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy> thenByTotalPomodoroCount() {
    return addSortByInternal('totalPomodoroCount', Sort.asc);
  }

  QueryBuilder<LocalTask, LocalTask, QAfterSortBy>
      thenByTotalPomodoroCountDesc() {
    return addSortByInternal('totalPomodoroCount', Sort.desc);
  }
}

extension LocalTaskQueryWhereDistinct
    on QueryBuilder<LocalTask, LocalTask, QDistinct> {
  QueryBuilder<LocalTask, LocalTask, QDistinct> distinctByContent(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('content', caseSensitive: caseSensitive);
  }

  QueryBuilder<LocalTask, LocalTask, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<LocalTask, LocalTask, QDistinct> distinctByIsCompleted() {
    return addDistinctByInternal('isCompleted');
  }

  QueryBuilder<LocalTask, LocalTask, QDistinct> distinctByPomodoroCount() {
    return addDistinctByInternal('pomodoroCount');
  }

  QueryBuilder<LocalTask, LocalTask, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('title', caseSensitive: caseSensitive);
  }

  QueryBuilder<LocalTask, LocalTask, QDistinct> distinctByTotalPomodoroCount() {
    return addDistinctByInternal('totalPomodoroCount');
  }
}

extension LocalTaskQueryProperty
    on QueryBuilder<LocalTask, LocalTask, QQueryProperty> {
  QueryBuilder<LocalTask, String, QQueryOperations> contentProperty() {
    return addPropertyNameInternal('content');
  }

  QueryBuilder<LocalTask, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<LocalTask, bool, QQueryOperations> isCompletedProperty() {
    return addPropertyNameInternal('isCompleted');
  }

  QueryBuilder<LocalTask, int, QQueryOperations> pomodoroCountProperty() {
    return addPropertyNameInternal('pomodoroCount');
  }

  QueryBuilder<LocalTask, String, QQueryOperations> titleProperty() {
    return addPropertyNameInternal('title');
  }

  QueryBuilder<LocalTask, int, QQueryOperations> totalPomodoroCountProperty() {
    return addPropertyNameInternal('totalPomodoroCount');
  }
}
