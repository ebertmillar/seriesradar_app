// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEpisodeCollection on Isar {
  IsarCollection<Episode> get episodes => this.collection();
}

const EpisodeSchema = CollectionSchema(
  name: r'Episode',
  id: -3258565036328751473,
  properties: {
    r'airDate': PropertySchema(
      id: 0,
      name: r'airDate',
      type: IsarType.dateTime,
    ),
    r'episodeNumber': PropertySchema(
      id: 1,
      name: r'episodeNumber',
      type: IsarType.long,
    ),
    r'episodeType': PropertySchema(
      id: 2,
      name: r'episodeType',
      type: IsarType.byte,
      enumMap: _EpisodeepisodeTypeEnumValueMap,
    ),
    r'id': PropertySchema(
      id: 3,
      name: r'id',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'overview': PropertySchema(
      id: 5,
      name: r'overview',
      type: IsarType.string,
    ),
    r'productionCode': PropertySchema(
      id: 6,
      name: r'productionCode',
      type: IsarType.string,
    ),
    r'runtime': PropertySchema(
      id: 7,
      name: r'runtime',
      type: IsarType.long,
    ),
    r'seasonNumber': PropertySchema(
      id: 8,
      name: r'seasonNumber',
      type: IsarType.long,
    ),
    r'showId': PropertySchema(
      id: 9,
      name: r'showId',
      type: IsarType.long,
    ),
    r'stillPath': PropertySchema(
      id: 10,
      name: r'stillPath',
      type: IsarType.string,
    ),
    r'voteAverage': PropertySchema(
      id: 11,
      name: r'voteAverage',
      type: IsarType.double,
    ),
    r'voteCount': PropertySchema(
      id: 12,
      name: r'voteCount',
      type: IsarType.long,
    )
  },
  estimateSize: _episodeEstimateSize,
  serialize: _episodeSerialize,
  deserialize: _episodeDeserialize,
  deserializeProp: _episodeDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _episodeGetId,
  getLinks: _episodeGetLinks,
  attach: _episodeAttach,
  version: '3.1.0+1',
);

int _episodeEstimateSize(
  Episode object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.overview.length * 3;
  bytesCount += 3 + object.productionCode.length * 3;
  bytesCount += 3 + object.stillPath.length * 3;
  return bytesCount;
}

void _episodeSerialize(
  Episode object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.airDate);
  writer.writeLong(offsets[1], object.episodeNumber);
  writer.writeByte(offsets[2], object.episodeType.index);
  writer.writeLong(offsets[3], object.id);
  writer.writeString(offsets[4], object.name);
  writer.writeString(offsets[5], object.overview);
  writer.writeString(offsets[6], object.productionCode);
  writer.writeLong(offsets[7], object.runtime);
  writer.writeLong(offsets[8], object.seasonNumber);
  writer.writeLong(offsets[9], object.showId);
  writer.writeString(offsets[10], object.stillPath);
  writer.writeDouble(offsets[11], object.voteAverage);
  writer.writeLong(offsets[12], object.voteCount);
}

Episode _episodeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Episode(
    airDate: reader.readDateTimeOrNull(offsets[0]),
    episodeNumber: reader.readLong(offsets[1]),
    episodeType:
        _EpisodeepisodeTypeValueEnumMap[reader.readByteOrNull(offsets[2])] ??
            EpisodeType.finale,
    id: reader.readLong(offsets[3]),
    name: reader.readString(offsets[4]),
    overview: reader.readString(offsets[5]),
    productionCode: reader.readString(offsets[6]),
    runtime: reader.readLong(offsets[7]),
    seasonNumber: reader.readLong(offsets[8]),
    showId: reader.readLong(offsets[9]),
    stillPath: reader.readString(offsets[10]),
    voteAverage: reader.readDouble(offsets[11]),
    voteCount: reader.readLong(offsets[12]),
  );
  object.isarId = id;
  return object;
}

P _episodeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (_EpisodeepisodeTypeValueEnumMap[reader.readByteOrNull(offset)] ??
          EpisodeType.finale) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _EpisodeepisodeTypeEnumValueMap = {
  'finale': 0,
  'standard': 1,
  'midSeason': 2,
};
const _EpisodeepisodeTypeValueEnumMap = {
  0: EpisodeType.finale,
  1: EpisodeType.standard,
  2: EpisodeType.midSeason,
};

Id _episodeGetId(Episode object) {
  return object.isarId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _episodeGetLinks(Episode object) {
  return [];
}

void _episodeAttach(IsarCollection<dynamic> col, Id id, Episode object) {
  object.isarId = id;
}

extension EpisodeQueryWhereSort on QueryBuilder<Episode, Episode, QWhere> {
  QueryBuilder<Episode, Episode, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EpisodeQueryWhere on QueryBuilder<Episode, Episode, QWhereClause> {
  QueryBuilder<Episode, Episode, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Episode, Episode, QAfterWhereClause> isarIdGreaterThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Episode, Episode, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Episode, Episode, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EpisodeQueryFilter
    on QueryBuilder<Episode, Episode, QFilterCondition> {
  QueryBuilder<Episode, Episode, QAfterFilterCondition> airDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'airDate',
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> airDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'airDate',
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> airDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'airDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> airDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'airDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> airDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'airDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> airDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'airDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> episodeNumberEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition>
      episodeNumberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'episodeNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> episodeNumberLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'episodeNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> episodeNumberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'episodeNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> episodeTypeEqualTo(
      EpisodeType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeType',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> episodeTypeGreaterThan(
    EpisodeType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'episodeType',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> episodeTypeLessThan(
    EpisodeType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'episodeType',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> episodeTypeBetween(
    EpisodeType lower,
    EpisodeType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'episodeType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> isarIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> isarIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> isarIdEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> isarIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> isarIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> isarIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> overviewEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> overviewGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> overviewLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> overviewBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'overview',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> overviewStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> overviewEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> overviewContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> overviewMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'overview',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> overviewIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> overviewIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> productionCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition>
      productionCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> productionCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> productionCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productionCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition>
      productionCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'productionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> productionCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'productionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> productionCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> productionCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productionCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition>
      productionCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productionCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition>
      productionCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productionCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> runtimeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'runtime',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> runtimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'runtime',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> runtimeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'runtime',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> runtimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'runtime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> seasonNumberEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seasonNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> seasonNumberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seasonNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> seasonNumberLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seasonNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> seasonNumberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seasonNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> showIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'showId',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> showIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'showId',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> showIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'showId',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> showIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'showId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> stillPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stillPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> stillPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stillPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> stillPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stillPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> stillPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stillPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> stillPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stillPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> stillPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stillPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> stillPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stillPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> stillPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stillPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> stillPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stillPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> stillPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stillPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> voteAverageEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'voteAverage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> voteAverageGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'voteAverage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> voteAverageLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'voteAverage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> voteAverageBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'voteAverage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> voteCountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'voteCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> voteCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'voteCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> voteCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'voteCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Episode, Episode, QAfterFilterCondition> voteCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'voteCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EpisodeQueryObject
    on QueryBuilder<Episode, Episode, QFilterCondition> {}

extension EpisodeQueryLinks
    on QueryBuilder<Episode, Episode, QFilterCondition> {}

extension EpisodeQuerySortBy on QueryBuilder<Episode, Episode, QSortBy> {
  QueryBuilder<Episode, Episode, QAfterSortBy> sortByAirDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'airDate', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByAirDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'airDate', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByEpisodeNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeNumber', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByEpisodeNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeNumber', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByEpisodeType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeType', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByEpisodeTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeType', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByOverview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByOverviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByProductionCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productionCode', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByProductionCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productionCode', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByRuntimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortBySeasonNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seasonNumber', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortBySeasonNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seasonNumber', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByShowId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showId', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByShowIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showId', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByStillPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stillPath', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByStillPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stillPath', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByVoteAverageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByVoteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteCount', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> sortByVoteCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteCount', Sort.desc);
    });
  }
}

extension EpisodeQuerySortThenBy
    on QueryBuilder<Episode, Episode, QSortThenBy> {
  QueryBuilder<Episode, Episode, QAfterSortBy> thenByAirDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'airDate', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByAirDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'airDate', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByEpisodeNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeNumber', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByEpisodeNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeNumber', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByEpisodeType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeType', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByEpisodeTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeType', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByOverview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByOverviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByProductionCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productionCode', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByProductionCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productionCode', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByRuntimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenBySeasonNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seasonNumber', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenBySeasonNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seasonNumber', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByShowId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showId', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByShowIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showId', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByStillPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stillPath', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByStillPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stillPath', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByVoteAverageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.desc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByVoteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteCount', Sort.asc);
    });
  }

  QueryBuilder<Episode, Episode, QAfterSortBy> thenByVoteCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteCount', Sort.desc);
    });
  }
}

extension EpisodeQueryWhereDistinct
    on QueryBuilder<Episode, Episode, QDistinct> {
  QueryBuilder<Episode, Episode, QDistinct> distinctByAirDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'airDate');
    });
  }

  QueryBuilder<Episode, Episode, QDistinct> distinctByEpisodeNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'episodeNumber');
    });
  }

  QueryBuilder<Episode, Episode, QDistinct> distinctByEpisodeType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'episodeType');
    });
  }

  QueryBuilder<Episode, Episode, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<Episode, Episode, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Episode, Episode, QDistinct> distinctByOverview(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overview', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Episode, Episode, QDistinct> distinctByProductionCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productionCode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Episode, Episode, QDistinct> distinctByRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'runtime');
    });
  }

  QueryBuilder<Episode, Episode, QDistinct> distinctBySeasonNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seasonNumber');
    });
  }

  QueryBuilder<Episode, Episode, QDistinct> distinctByShowId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'showId');
    });
  }

  QueryBuilder<Episode, Episode, QDistinct> distinctByStillPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stillPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Episode, Episode, QDistinct> distinctByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'voteAverage');
    });
  }

  QueryBuilder<Episode, Episode, QDistinct> distinctByVoteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'voteCount');
    });
  }
}

extension EpisodeQueryProperty
    on QueryBuilder<Episode, Episode, QQueryProperty> {
  QueryBuilder<Episode, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Episode, DateTime?, QQueryOperations> airDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'airDate');
    });
  }

  QueryBuilder<Episode, int, QQueryOperations> episodeNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'episodeNumber');
    });
  }

  QueryBuilder<Episode, EpisodeType, QQueryOperations> episodeTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'episodeType');
    });
  }

  QueryBuilder<Episode, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Episode, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Episode, String, QQueryOperations> overviewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overview');
    });
  }

  QueryBuilder<Episode, String, QQueryOperations> productionCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productionCode');
    });
  }

  QueryBuilder<Episode, int, QQueryOperations> runtimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'runtime');
    });
  }

  QueryBuilder<Episode, int, QQueryOperations> seasonNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seasonNumber');
    });
  }

  QueryBuilder<Episode, int, QQueryOperations> showIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'showId');
    });
  }

  QueryBuilder<Episode, String, QQueryOperations> stillPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stillPath');
    });
  }

  QueryBuilder<Episode, double, QQueryOperations> voteAverageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'voteAverage');
    });
  }

  QueryBuilder<Episode, int, QQueryOperations> voteCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'voteCount');
    });
  }
}
