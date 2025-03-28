// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serie_details.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSerieDetailsCollection on Isar {
  IsarCollection<SerieDetails> get serieDetails => this.collection();
}

const SerieDetailsSchema = CollectionSchema(
  name: r'SerieDetails',
  id: 8506640110275833009,
  properties: {
    r'adult': PropertySchema(
      id: 0,
      name: r'adult',
      type: IsarType.bool,
    ),
    r'backdropPath': PropertySchema(
      id: 1,
      name: r'backdropPath',
      type: IsarType.string,
    ),
    r'createdBy': PropertySchema(
      id: 2,
      name: r'createdBy',
      type: IsarType.objectList,
      target: r'CreatedBy',
    ),
    r'firstAirDate': PropertySchema(
      id: 3,
      name: r'firstAirDate',
      type: IsarType.dateTime,
    ),
    r'genres': PropertySchema(
      id: 4,
      name: r'genres',
      type: IsarType.objectList,
      target: r'Genre',
    ),
    r'homepage': PropertySchema(
      id: 5,
      name: r'homepage',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 6,
      name: r'id',
      type: IsarType.long,
    ),
    r'inProduction': PropertySchema(
      id: 7,
      name: r'inProduction',
      type: IsarType.bool,
    ),
    r'languages': PropertySchema(
      id: 8,
      name: r'languages',
      type: IsarType.stringList,
    ),
    r'lastAirDate': PropertySchema(
      id: 9,
      name: r'lastAirDate',
      type: IsarType.dateTime,
    ),
    r'lastEpisodeToAir': PropertySchema(
      id: 10,
      name: r'lastEpisodeToAir',
      type: IsarType.object,
      target: r'LastEpisodeToAir',
    ),
    r'name': PropertySchema(
      id: 11,
      name: r'name',
      type: IsarType.string,
    ),
    r'networks': PropertySchema(
      id: 12,
      name: r'networks',
      type: IsarType.objectList,
      target: r'Network',
    ),
    r'numberOfEpisodes': PropertySchema(
      id: 13,
      name: r'numberOfEpisodes',
      type: IsarType.long,
    ),
    r'numberOfSeasons': PropertySchema(
      id: 14,
      name: r'numberOfSeasons',
      type: IsarType.long,
    ),
    r'originCountry': PropertySchema(
      id: 15,
      name: r'originCountry',
      type: IsarType.stringList,
    ),
    r'originalLanguage': PropertySchema(
      id: 16,
      name: r'originalLanguage',
      type: IsarType.string,
    ),
    r'originalName': PropertySchema(
      id: 17,
      name: r'originalName',
      type: IsarType.string,
    ),
    r'overview': PropertySchema(
      id: 18,
      name: r'overview',
      type: IsarType.string,
    ),
    r'popularity': PropertySchema(
      id: 19,
      name: r'popularity',
      type: IsarType.double,
    ),
    r'posterPath': PropertySchema(
      id: 20,
      name: r'posterPath',
      type: IsarType.string,
    ),
    r'productionCompanies': PropertySchema(
      id: 21,
      name: r'productionCompanies',
      type: IsarType.objectList,
      target: r'Network',
    ),
    r'productionCountries': PropertySchema(
      id: 22,
      name: r'productionCountries',
      type: IsarType.objectList,
      target: r'ProductionCountry',
    ),
    r'seasons': PropertySchema(
      id: 23,
      name: r'seasons',
      type: IsarType.objectList,
      target: r'Season',
    ),
    r'spokenLanguages': PropertySchema(
      id: 24,
      name: r'spokenLanguages',
      type: IsarType.objectList,
      target: r'SpokenLanguage',
    ),
    r'status': PropertySchema(
      id: 25,
      name: r'status',
      type: IsarType.string,
    ),
    r'tagline': PropertySchema(
      id: 26,
      name: r'tagline',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 27,
      name: r'type',
      type: IsarType.string,
    ),
    r'voteAverage': PropertySchema(
      id: 28,
      name: r'voteAverage',
      type: IsarType.double,
    ),
    r'voteCount': PropertySchema(
      id: 29,
      name: r'voteCount',
      type: IsarType.long,
    )
  },
  estimateSize: _serieDetailsEstimateSize,
  serialize: _serieDetailsSerialize,
  deserialize: _serieDetailsDeserialize,
  deserializeProp: _serieDetailsDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'CreatedBy': CreatedBySchema,
    r'Genre': GenreSchema,
    r'LastEpisodeToAir': LastEpisodeToAirSchema,
    r'Network': NetworkSchema,
    r'ProductionCountry': ProductionCountrySchema,
    r'Season': SeasonSchema,
    r'SpokenLanguage': SpokenLanguageSchema
  },
  getId: _serieDetailsGetId,
  getLinks: _serieDetailsGetLinks,
  attach: _serieDetailsAttach,
  version: '3.1.0+1',
);

int _serieDetailsEstimateSize(
  SerieDetails object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.backdropPath.length * 3;
  bytesCount += 3 + object.createdBy.length * 3;
  {
    final offsets = allOffsets[CreatedBy]!;
    for (var i = 0; i < object.createdBy.length; i++) {
      final value = object.createdBy[i];
      bytesCount += CreatedBySchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.genres.length * 3;
  {
    final offsets = allOffsets[Genre]!;
    for (var i = 0; i < object.genres.length; i++) {
      final value = object.genres[i];
      bytesCount += GenreSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.homepage.length * 3;
  bytesCount += 3 + object.languages.length * 3;
  {
    for (var i = 0; i < object.languages.length; i++) {
      final value = object.languages[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.lastEpisodeToAir;
    if (value != null) {
      bytesCount += 3 +
          LastEpisodeToAirSchema.estimateSize(
              value, allOffsets[LastEpisodeToAir]!, allOffsets);
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.networks.length * 3;
  {
    final offsets = allOffsets[Network]!;
    for (var i = 0; i < object.networks.length; i++) {
      final value = object.networks[i];
      bytesCount += NetworkSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.originCountry.length * 3;
  {
    for (var i = 0; i < object.originCountry.length; i++) {
      final value = object.originCountry[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.originalLanguage.length * 3;
  bytesCount += 3 + object.originalName.length * 3;
  bytesCount += 3 + object.overview.length * 3;
  bytesCount += 3 + object.posterPath.length * 3;
  bytesCount += 3 + object.productionCompanies.length * 3;
  {
    final offsets = allOffsets[Network]!;
    for (var i = 0; i < object.productionCompanies.length; i++) {
      final value = object.productionCompanies[i];
      bytesCount += NetworkSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.productionCountries.length * 3;
  {
    final offsets = allOffsets[ProductionCountry]!;
    for (var i = 0; i < object.productionCountries.length; i++) {
      final value = object.productionCountries[i];
      bytesCount +=
          ProductionCountrySchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.seasons.length * 3;
  {
    final offsets = allOffsets[Season]!;
    for (var i = 0; i < object.seasons.length; i++) {
      final value = object.seasons[i];
      bytesCount += SeasonSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.spokenLanguages.length * 3;
  {
    final offsets = allOffsets[SpokenLanguage]!;
    for (var i = 0; i < object.spokenLanguages.length; i++) {
      final value = object.spokenLanguages[i];
      bytesCount +=
          SpokenLanguageSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.status.length * 3;
  bytesCount += 3 + object.tagline.length * 3;
  bytesCount += 3 + object.type.length * 3;
  return bytesCount;
}

void _serieDetailsSerialize(
  SerieDetails object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.adult);
  writer.writeString(offsets[1], object.backdropPath);
  writer.writeObjectList<CreatedBy>(
    offsets[2],
    allOffsets,
    CreatedBySchema.serialize,
    object.createdBy,
  );
  writer.writeDateTime(offsets[3], object.firstAirDate);
  writer.writeObjectList<Genre>(
    offsets[4],
    allOffsets,
    GenreSchema.serialize,
    object.genres,
  );
  writer.writeString(offsets[5], object.homepage);
  writer.writeLong(offsets[6], object.id);
  writer.writeBool(offsets[7], object.inProduction);
  writer.writeStringList(offsets[8], object.languages);
  writer.writeDateTime(offsets[9], object.lastAirDate);
  writer.writeObject<LastEpisodeToAir>(
    offsets[10],
    allOffsets,
    LastEpisodeToAirSchema.serialize,
    object.lastEpisodeToAir,
  );
  writer.writeString(offsets[11], object.name);
  writer.writeObjectList<Network>(
    offsets[12],
    allOffsets,
    NetworkSchema.serialize,
    object.networks,
  );
  writer.writeLong(offsets[13], object.numberOfEpisodes);
  writer.writeLong(offsets[14], object.numberOfSeasons);
  writer.writeStringList(offsets[15], object.originCountry);
  writer.writeString(offsets[16], object.originalLanguage);
  writer.writeString(offsets[17], object.originalName);
  writer.writeString(offsets[18], object.overview);
  writer.writeDouble(offsets[19], object.popularity);
  writer.writeString(offsets[20], object.posterPath);
  writer.writeObjectList<Network>(
    offsets[21],
    allOffsets,
    NetworkSchema.serialize,
    object.productionCompanies,
  );
  writer.writeObjectList<ProductionCountry>(
    offsets[22],
    allOffsets,
    ProductionCountrySchema.serialize,
    object.productionCountries,
  );
  writer.writeObjectList<Season>(
    offsets[23],
    allOffsets,
    SeasonSchema.serialize,
    object.seasons,
  );
  writer.writeObjectList<SpokenLanguage>(
    offsets[24],
    allOffsets,
    SpokenLanguageSchema.serialize,
    object.spokenLanguages,
  );
  writer.writeString(offsets[25], object.status);
  writer.writeString(offsets[26], object.tagline);
  writer.writeString(offsets[27], object.type);
  writer.writeDouble(offsets[28], object.voteAverage);
  writer.writeLong(offsets[29], object.voteCount);
}

SerieDetails _serieDetailsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SerieDetails(
    adult: reader.readBool(offsets[0]),
    backdropPath: reader.readString(offsets[1]),
    createdBy: reader.readObjectList<CreatedBy>(
          offsets[2],
          CreatedBySchema.deserialize,
          allOffsets,
          CreatedBy(),
        ) ??
        [],
    firstAirDate: reader.readDateTimeOrNull(offsets[3]),
    genres: reader.readObjectList<Genre>(
          offsets[4],
          GenreSchema.deserialize,
          allOffsets,
          Genre(),
        ) ??
        [],
    homepage: reader.readString(offsets[5]),
    id: reader.readLong(offsets[6]),
    inProduction: reader.readBool(offsets[7]),
    languages: reader.readStringList(offsets[8]) ?? [],
    lastAirDate: reader.readDateTimeOrNull(offsets[9]),
    lastEpisodeToAir: reader.readObjectOrNull<LastEpisodeToAir>(
      offsets[10],
      LastEpisodeToAirSchema.deserialize,
      allOffsets,
    ),
    name: reader.readString(offsets[11]),
    networks: reader.readObjectList<Network>(
          offsets[12],
          NetworkSchema.deserialize,
          allOffsets,
          Network(),
        ) ??
        [],
    numberOfEpisodes: reader.readLong(offsets[13]),
    numberOfSeasons: reader.readLong(offsets[14]),
    originCountry: reader.readStringList(offsets[15]) ?? [],
    originalLanguage: reader.readString(offsets[16]),
    originalName: reader.readString(offsets[17]),
    overview: reader.readString(offsets[18]),
    popularity: reader.readDouble(offsets[19]),
    posterPath: reader.readString(offsets[20]),
    productionCompanies: reader.readObjectList<Network>(
          offsets[21],
          NetworkSchema.deserialize,
          allOffsets,
          Network(),
        ) ??
        [],
    productionCountries: reader.readObjectList<ProductionCountry>(
          offsets[22],
          ProductionCountrySchema.deserialize,
          allOffsets,
          ProductionCountry(),
        ) ??
        [],
    seasons: reader.readObjectList<Season>(
          offsets[23],
          SeasonSchema.deserialize,
          allOffsets,
          Season(),
        ) ??
        [],
    spokenLanguages: reader.readObjectList<SpokenLanguage>(
          offsets[24],
          SpokenLanguageSchema.deserialize,
          allOffsets,
          SpokenLanguage(),
        ) ??
        [],
    status: reader.readString(offsets[25]),
    tagline: reader.readString(offsets[26]),
    type: reader.readString(offsets[27]),
    voteAverage: reader.readDouble(offsets[28]),
    voteCount: reader.readLong(offsets[29]),
  );
  object.isarId = id;
  return object;
}

P _serieDetailsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readObjectList<CreatedBy>(
            offset,
            CreatedBySchema.deserialize,
            allOffsets,
            CreatedBy(),
          ) ??
          []) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readObjectList<Genre>(
            offset,
            GenreSchema.deserialize,
            allOffsets,
            Genre(),
          ) ??
          []) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readStringList(offset) ?? []) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readObjectOrNull<LastEpisodeToAir>(
        offset,
        LastEpisodeToAirSchema.deserialize,
        allOffsets,
      )) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readObjectList<Network>(
            offset,
            NetworkSchema.deserialize,
            allOffsets,
            Network(),
          ) ??
          []) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    case 15:
      return (reader.readStringList(offset) ?? []) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readDouble(offset)) as P;
    case 20:
      return (reader.readString(offset)) as P;
    case 21:
      return (reader.readObjectList<Network>(
            offset,
            NetworkSchema.deserialize,
            allOffsets,
            Network(),
          ) ??
          []) as P;
    case 22:
      return (reader.readObjectList<ProductionCountry>(
            offset,
            ProductionCountrySchema.deserialize,
            allOffsets,
            ProductionCountry(),
          ) ??
          []) as P;
    case 23:
      return (reader.readObjectList<Season>(
            offset,
            SeasonSchema.deserialize,
            allOffsets,
            Season(),
          ) ??
          []) as P;
    case 24:
      return (reader.readObjectList<SpokenLanguage>(
            offset,
            SpokenLanguageSchema.deserialize,
            allOffsets,
            SpokenLanguage(),
          ) ??
          []) as P;
    case 25:
      return (reader.readString(offset)) as P;
    case 26:
      return (reader.readString(offset)) as P;
    case 27:
      return (reader.readString(offset)) as P;
    case 28:
      return (reader.readDouble(offset)) as P;
    case 29:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _serieDetailsGetId(SerieDetails object) {
  return object.isarId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _serieDetailsGetLinks(SerieDetails object) {
  return [];
}

void _serieDetailsAttach(
    IsarCollection<dynamic> col, Id id, SerieDetails object) {
  object.isarId = id;
}

extension SerieDetailsQueryWhereSort
    on QueryBuilder<SerieDetails, SerieDetails, QWhere> {
  QueryBuilder<SerieDetails, SerieDetails, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SerieDetailsQueryWhere
    on QueryBuilder<SerieDetails, SerieDetails, QWhereClause> {
  QueryBuilder<SerieDetails, SerieDetails, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterWhereClause> isarIdNotEqualTo(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterWhereClause> isarIdBetween(
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

extension SerieDetailsQueryFilter
    on QueryBuilder<SerieDetails, SerieDetails, QFilterCondition> {
  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> adultEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adult',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      backdropPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backdropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      backdropPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backdropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      backdropPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backdropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      backdropPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backdropPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      backdropPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backdropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      backdropPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backdropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      backdropPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backdropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      backdropPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backdropPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      backdropPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backdropPath',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      backdropPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backdropPath',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      createdByLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdBy',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      createdByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdBy',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      createdByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdBy',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      createdByLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdBy',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      createdByLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdBy',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      createdByLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'createdBy',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      firstAirDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'firstAirDate',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      firstAirDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'firstAirDate',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      firstAirDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstAirDate',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      firstAirDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstAirDate',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      firstAirDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstAirDate',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      firstAirDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstAirDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      genresLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      genresIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      genresIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      genresLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      genresLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      genresLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      homepageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      homepageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      homepageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      homepageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'homepage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      homepageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      homepageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      homepageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      homepageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'homepage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      homepageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'homepage',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      homepageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'homepage',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      inProductionEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inProduction',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      isarIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      isarIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> isarIdEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      isarIdGreaterThan(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      isarIdLessThan(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'languages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'languages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'languages',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'languages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'languages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'languages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'languages',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languages',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'languages',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languages',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languages',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languages',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languages',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languages',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      languagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languages',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      lastAirDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastAirDate',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      lastAirDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastAirDate',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      lastAirDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastAirDate',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      lastAirDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastAirDate',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      lastAirDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastAirDate',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      lastAirDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastAirDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      lastEpisodeToAirIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastEpisodeToAir',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      lastEpisodeToAirIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastEpisodeToAir',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> nameContains(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      networksLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'networks',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      networksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'networks',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      networksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'networks',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      networksLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'networks',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      networksLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'networks',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      networksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'networks',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      numberOfEpisodesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberOfEpisodes',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      numberOfEpisodesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numberOfEpisodes',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      numberOfEpisodesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numberOfEpisodes',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      numberOfEpisodesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numberOfEpisodes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      numberOfSeasonsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberOfSeasons',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      numberOfSeasonsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numberOfSeasons',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      numberOfSeasonsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numberOfSeasons',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      numberOfSeasonsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numberOfSeasons',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originCountry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originCountry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'originCountry',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'originCountry',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'originCountry',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'originCountry',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'originCountry',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originCountryLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'originCountry',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalLanguageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalLanguageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalLanguageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalLanguageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalLanguage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalLanguageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originalLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalLanguageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originalLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalLanguageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originalLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalLanguageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originalLanguage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalLanguageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalLanguage',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalLanguageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originalLanguage',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originalName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalName',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      originalNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originalName',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      overviewEqualTo(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      overviewGreaterThan(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      overviewLessThan(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      overviewBetween(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      overviewStartsWith(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      overviewEndsWith(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      overviewContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      overviewMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'overview',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      overviewIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      overviewIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      popularityEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'popularity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      popularityGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'popularity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      popularityLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'popularity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      popularityBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'popularity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      posterPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      posterPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      posterPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      posterPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'posterPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      posterPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      posterPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      posterPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      posterPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'posterPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      posterPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posterPath',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      posterPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'posterPath',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCompaniesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'productionCompanies',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCompaniesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'productionCompanies',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCompaniesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'productionCompanies',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCompaniesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'productionCompanies',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCompaniesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'productionCompanies',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCompaniesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'productionCompanies',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCountriesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'productionCountries',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCountriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'productionCountries',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCountriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'productionCountries',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCountriesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'productionCountries',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCountriesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'productionCountries',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCountriesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'productionCountries',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      seasonsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seasons',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      seasonsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seasons',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      seasonsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seasons',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      seasonsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seasons',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      seasonsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seasons',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      seasonsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seasons',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      spokenLanguagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'spokenLanguages',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      spokenLanguagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'spokenLanguages',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      spokenLanguagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'spokenLanguages',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      spokenLanguagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'spokenLanguages',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      spokenLanguagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'spokenLanguages',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      spokenLanguagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'spokenLanguages',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      taglineEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      taglineGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tagline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      taglineLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tagline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      taglineBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tagline',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      taglineStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tagline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      taglineEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tagline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      taglineContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tagline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      taglineMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tagline',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      taglineIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagline',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      taglineIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tagline',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      voteAverageEqualTo(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      voteAverageGreaterThan(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      voteAverageLessThan(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      voteAverageBetween(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      voteCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'voteCount',
        value: value,
      ));
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      voteCountGreaterThan(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      voteCountLessThan(
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

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      voteCountBetween(
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

extension SerieDetailsQueryObject
    on QueryBuilder<SerieDetails, SerieDetails, QFilterCondition> {
  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      createdByElement(FilterQuery<CreatedBy> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'createdBy');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition> genresElement(
      FilterQuery<Genre> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'genres');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      lastEpisodeToAir(FilterQuery<LastEpisodeToAir> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lastEpisodeToAir');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      networksElement(FilterQuery<Network> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'networks');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCompaniesElement(FilterQuery<Network> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'productionCompanies');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      productionCountriesElement(FilterQuery<ProductionCountry> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'productionCountries');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      seasonsElement(FilterQuery<Season> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'seasons');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterFilterCondition>
      spokenLanguagesElement(FilterQuery<SpokenLanguage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'spokenLanguages');
    });
  }
}

extension SerieDetailsQueryLinks
    on QueryBuilder<SerieDetails, SerieDetails, QFilterCondition> {}

extension SerieDetailsQuerySortBy
    on QueryBuilder<SerieDetails, SerieDetails, QSortBy> {
  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adult', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByAdultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adult', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByBackdropPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backdropPath', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByBackdropPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backdropPath', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByFirstAirDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstAirDate', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByFirstAirDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstAirDate', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByHomepage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByHomepageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByInProduction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inProduction', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByInProductionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inProduction', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByLastAirDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastAirDate', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByLastAirDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastAirDate', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByNumberOfEpisodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfEpisodes', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByNumberOfEpisodesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfEpisodes', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByNumberOfSeasons() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfSeasons', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByNumberOfSeasonsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfSeasons', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByOriginalLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalLanguage', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByOriginalLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalLanguage', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByOriginalName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalName', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByOriginalNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalName', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByOverview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByOverviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByPopularityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByPosterPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByPosterPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByTagline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagline', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByTaglineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagline', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      sortByVoteAverageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByVoteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteCount', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> sortByVoteCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteCount', Sort.desc);
    });
  }
}

extension SerieDetailsQuerySortThenBy
    on QueryBuilder<SerieDetails, SerieDetails, QSortThenBy> {
  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adult', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByAdultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adult', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByBackdropPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backdropPath', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByBackdropPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backdropPath', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByFirstAirDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstAirDate', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByFirstAirDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstAirDate', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByHomepage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByHomepageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByInProduction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inProduction', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByInProductionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inProduction', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByLastAirDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastAirDate', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByLastAirDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastAirDate', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByNumberOfEpisodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfEpisodes', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByNumberOfEpisodesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfEpisodes', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByNumberOfSeasons() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfSeasons', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByNumberOfSeasonsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfSeasons', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByOriginalLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalLanguage', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByOriginalLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalLanguage', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByOriginalName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalName', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByOriginalNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalName', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByOverview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByOverviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByPopularityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByPosterPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByPosterPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByTagline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagline', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByTaglineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagline', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy>
      thenByVoteAverageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.desc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByVoteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteCount', Sort.asc);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QAfterSortBy> thenByVoteCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteCount', Sort.desc);
    });
  }
}

extension SerieDetailsQueryWhereDistinct
    on QueryBuilder<SerieDetails, SerieDetails, QDistinct> {
  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adult');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByBackdropPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backdropPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByFirstAirDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstAirDate');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByHomepage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'homepage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByInProduction() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inProduction');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByLanguages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'languages');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByLastAirDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastAirDate');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct>
      distinctByNumberOfEpisodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numberOfEpisodes');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct>
      distinctByNumberOfSeasons() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numberOfSeasons');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct>
      distinctByOriginCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originCountry');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct>
      distinctByOriginalLanguage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originalLanguage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByOriginalName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originalName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByOverview(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overview', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'popularity');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByPosterPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'posterPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByTagline(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tagline', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'voteAverage');
    });
  }

  QueryBuilder<SerieDetails, SerieDetails, QDistinct> distinctByVoteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'voteCount');
    });
  }
}

extension SerieDetailsQueryProperty
    on QueryBuilder<SerieDetails, SerieDetails, QQueryProperty> {
  QueryBuilder<SerieDetails, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<SerieDetails, bool, QQueryOperations> adultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adult');
    });
  }

  QueryBuilder<SerieDetails, String, QQueryOperations> backdropPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backdropPath');
    });
  }

  QueryBuilder<SerieDetails, List<CreatedBy>, QQueryOperations>
      createdByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdBy');
    });
  }

  QueryBuilder<SerieDetails, DateTime?, QQueryOperations>
      firstAirDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstAirDate');
    });
  }

  QueryBuilder<SerieDetails, List<Genre>, QQueryOperations> genresProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'genres');
    });
  }

  QueryBuilder<SerieDetails, String, QQueryOperations> homepageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'homepage');
    });
  }

  QueryBuilder<SerieDetails, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SerieDetails, bool, QQueryOperations> inProductionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inProduction');
    });
  }

  QueryBuilder<SerieDetails, List<String>, QQueryOperations>
      languagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'languages');
    });
  }

  QueryBuilder<SerieDetails, DateTime?, QQueryOperations>
      lastAirDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastAirDate');
    });
  }

  QueryBuilder<SerieDetails, LastEpisodeToAir?, QQueryOperations>
      lastEpisodeToAirProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastEpisodeToAir');
    });
  }

  QueryBuilder<SerieDetails, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<SerieDetails, List<Network>, QQueryOperations>
      networksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'networks');
    });
  }

  QueryBuilder<SerieDetails, int, QQueryOperations> numberOfEpisodesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numberOfEpisodes');
    });
  }

  QueryBuilder<SerieDetails, int, QQueryOperations> numberOfSeasonsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numberOfSeasons');
    });
  }

  QueryBuilder<SerieDetails, List<String>, QQueryOperations>
      originCountryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originCountry');
    });
  }

  QueryBuilder<SerieDetails, String, QQueryOperations>
      originalLanguageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originalLanguage');
    });
  }

  QueryBuilder<SerieDetails, String, QQueryOperations> originalNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originalName');
    });
  }

  QueryBuilder<SerieDetails, String, QQueryOperations> overviewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overview');
    });
  }

  QueryBuilder<SerieDetails, double, QQueryOperations> popularityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'popularity');
    });
  }

  QueryBuilder<SerieDetails, String, QQueryOperations> posterPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'posterPath');
    });
  }

  QueryBuilder<SerieDetails, List<Network>, QQueryOperations>
      productionCompaniesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productionCompanies');
    });
  }

  QueryBuilder<SerieDetails, List<ProductionCountry>, QQueryOperations>
      productionCountriesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productionCountries');
    });
  }

  QueryBuilder<SerieDetails, List<Season>, QQueryOperations> seasonsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seasons');
    });
  }

  QueryBuilder<SerieDetails, List<SpokenLanguage>, QQueryOperations>
      spokenLanguagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spokenLanguages');
    });
  }

  QueryBuilder<SerieDetails, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<SerieDetails, String, QQueryOperations> taglineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tagline');
    });
  }

  QueryBuilder<SerieDetails, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<SerieDetails, double, QQueryOperations> voteAverageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'voteAverage');
    });
  }

  QueryBuilder<SerieDetails, int, QQueryOperations> voteCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'voteCount');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CreatedBySchema = Schema(
  name: r'CreatedBy',
  id: 7673419471619854701,
  properties: {
    r'creditId': PropertySchema(
      id: 0,
      name: r'creditId',
      type: IsarType.string,
    ),
    r'gender': PropertySchema(
      id: 1,
      name: r'gender',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 2,
      name: r'id',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'originalName': PropertySchema(
      id: 4,
      name: r'originalName',
      type: IsarType.string,
    ),
    r'profilePath': PropertySchema(
      id: 5,
      name: r'profilePath',
      type: IsarType.string,
    )
  },
  estimateSize: _createdByEstimateSize,
  serialize: _createdBySerialize,
  deserialize: _createdByDeserialize,
  deserializeProp: _createdByDeserializeProp,
);

int _createdByEstimateSize(
  CreatedBy object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.creditId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.originalName.length * 3;
  {
    final value = object.profilePath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _createdBySerialize(
  CreatedBy object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.creditId);
  writer.writeLong(offsets[1], object.gender);
  writer.writeLong(offsets[2], object.id);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.originalName);
  writer.writeString(offsets[5], object.profilePath);
}

CreatedBy _createdByDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CreatedBy(
    creditId: reader.readStringOrNull(offsets[0]),
    gender: reader.readLongOrNull(offsets[1]),
    id: reader.readLongOrNull(offsets[2]) ?? 0,
    name: reader.readStringOrNull(offsets[3]) ?? '',
    originalName: reader.readStringOrNull(offsets[4]) ?? '',
    profilePath: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _createdByDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 4:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CreatedByQueryFilter
    on QueryBuilder<CreatedBy, CreatedBy, QFilterCondition> {
  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> creditIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'creditId',
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      creditIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'creditId',
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> creditIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creditId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> creditIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creditId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> creditIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creditId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> creditIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creditId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> creditIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'creditId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> creditIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'creditId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> creditIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'creditId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> creditIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'creditId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> creditIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creditId',
        value: '',
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      creditIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'creditId',
        value: '',
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> genderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gender',
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> genderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gender',
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> genderEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: value,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> genderGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gender',
        value: value,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> genderLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gender',
        value: value,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> genderBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gender',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> nameContains(
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

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> originalNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      originalNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      originalNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> originalNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      originalNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      originalNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      originalNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> originalNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originalName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      originalNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalName',
        value: '',
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      originalNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originalName',
        value: '',
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      profilePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'profilePath',
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      profilePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'profilePath',
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> profilePathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profilePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      profilePathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'profilePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> profilePathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'profilePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> profilePathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'profilePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      profilePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'profilePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> profilePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'profilePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> profilePathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'profilePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition> profilePathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'profilePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      profilePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profilePath',
        value: '',
      ));
    });
  }

  QueryBuilder<CreatedBy, CreatedBy, QAfterFilterCondition>
      profilePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'profilePath',
        value: '',
      ));
    });
  }
}

extension CreatedByQueryObject
    on QueryBuilder<CreatedBy, CreatedBy, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const GenreSchema = Schema(
  name: r'Genre',
  id: -453881181692258612,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _genreEstimateSize,
  serialize: _genreSerialize,
  deserialize: _genreDeserialize,
  deserializeProp: _genreDeserializeProp,
);

int _genreEstimateSize(
  Genre object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _genreSerialize(
  Genre object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeString(offsets[1], object.name);
}

Genre _genreDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Genre(
    id: reader.readLongOrNull(offsets[0]) ?? 0,
    name: reader.readStringOrNull(offsets[1]) ?? '',
  );
  return object;
}

P _genreDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readStringOrNull(offset) ?? '') as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension GenreQueryFilter on QueryBuilder<Genre, Genre, QFilterCondition> {
  QueryBuilder<Genre, Genre, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Genre, Genre, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Genre, Genre, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Genre, Genre, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Genre, Genre, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension GenreQueryObject on QueryBuilder<Genre, Genre, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const LastEpisodeToAirSchema = Schema(
  name: r'LastEpisodeToAir',
  id: -3628655319598465531,
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
      type: IsarType.string,
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
  estimateSize: _lastEpisodeToAirEstimateSize,
  serialize: _lastEpisodeToAirSerialize,
  deserialize: _lastEpisodeToAirDeserialize,
  deserializeProp: _lastEpisodeToAirDeserializeProp,
);

int _lastEpisodeToAirEstimateSize(
  LastEpisodeToAir object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.episodeType.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.overview.length * 3;
  bytesCount += 3 + object.productionCode.length * 3;
  {
    final value = object.stillPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _lastEpisodeToAirSerialize(
  LastEpisodeToAir object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.airDate);
  writer.writeLong(offsets[1], object.episodeNumber);
  writer.writeString(offsets[2], object.episodeType);
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

LastEpisodeToAir _lastEpisodeToAirDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LastEpisodeToAir(
    airDate: reader.readDateTimeOrNull(offsets[0]),
    episodeNumber: reader.readLongOrNull(offsets[1]) ?? 0,
    episodeType: reader.readStringOrNull(offsets[2]) ?? '',
    id: reader.readLongOrNull(offsets[3]) ?? 0,
    name: reader.readStringOrNull(offsets[4]) ?? '',
    overview: reader.readStringOrNull(offsets[5]) ?? '',
    productionCode: reader.readStringOrNull(offsets[6]) ?? '',
    runtime: reader.readLongOrNull(offsets[7]),
    seasonNumber: reader.readLongOrNull(offsets[8]) ?? 0,
    showId: reader.readLongOrNull(offsets[9]) ?? 0,
    stillPath: reader.readStringOrNull(offsets[10]),
    voteAverage: reader.readDoubleOrNull(offsets[11]) ?? 0.0,
    voteCount: reader.readLongOrNull(offsets[12]) ?? 0,
  );
  return object;
}

P _lastEpisodeToAirDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 2:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 3:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 4:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 5:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 6:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 9:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset) ?? 0.0) as P;
    case 12:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LastEpisodeToAirQueryFilter
    on QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QFilterCondition> {
  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      airDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'airDate',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      airDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'airDate',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      airDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'airDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      airDateGreaterThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      airDateLessThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      airDateBetween(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      episodeNumberEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      episodeNumberLessThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      episodeNumberBetween(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      episodeTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      episodeTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'episodeType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      episodeTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'episodeType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      episodeTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'episodeType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      episodeTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'episodeType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      episodeTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'episodeType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      episodeTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'episodeType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      episodeTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'episodeType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      episodeTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeType',
        value: '',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      episodeTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'episodeType',
        value: '',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      nameEqualTo(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      nameBetween(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      overviewEqualTo(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      overviewGreaterThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      overviewLessThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      overviewBetween(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      overviewStartsWith(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      overviewEndsWith(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      overviewContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      overviewMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'overview',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      overviewIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      overviewIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      productionCodeEqualTo(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      productionCodeLessThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      productionCodeBetween(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      productionCodeEndsWith(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      productionCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      productionCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productionCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      productionCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productionCode',
        value: '',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      productionCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productionCode',
        value: '',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      runtimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'runtime',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      runtimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'runtime',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      runtimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'runtime',
        value: value,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      runtimeGreaterThan(
    int? value, {
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      runtimeLessThan(
    int? value, {
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      runtimeBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      seasonNumberEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seasonNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      seasonNumberGreaterThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      seasonNumberLessThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      seasonNumberBetween(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      showIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'showId',
        value: value,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      showIdGreaterThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      showIdLessThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      showIdBetween(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      stillPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stillPath',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      stillPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stillPath',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      stillPathEqualTo(
    String? value, {
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      stillPathGreaterThan(
    String? value, {
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      stillPathLessThan(
    String? value, {
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      stillPathBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      stillPathStartsWith(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      stillPathEndsWith(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      stillPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stillPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      stillPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stillPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      stillPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stillPath',
        value: '',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      stillPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stillPath',
        value: '',
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      voteAverageEqualTo(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      voteAverageGreaterThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      voteAverageLessThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      voteAverageBetween(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      voteCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'voteCount',
        value: value,
      ));
    });
  }

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      voteCountGreaterThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      voteCountLessThan(
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

  QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QAfterFilterCondition>
      voteCountBetween(
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

extension LastEpisodeToAirQueryObject
    on QueryBuilder<LastEpisodeToAir, LastEpisodeToAir, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const NetworkSchema = Schema(
  name: r'Network',
  id: -3925120672061997113,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'logoPath': PropertySchema(
      id: 1,
      name: r'logoPath',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'originCountry': PropertySchema(
      id: 3,
      name: r'originCountry',
      type: IsarType.string,
    )
  },
  estimateSize: _networkEstimateSize,
  serialize: _networkSerialize,
  deserialize: _networkDeserialize,
  deserializeProp: _networkDeserializeProp,
);

int _networkEstimateSize(
  Network object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.logoPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.originCountry.length * 3;
  return bytesCount;
}

void _networkSerialize(
  Network object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeString(offsets[1], object.logoPath);
  writer.writeString(offsets[2], object.name);
  writer.writeString(offsets[3], object.originCountry);
}

Network _networkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Network(
    id: reader.readLongOrNull(offsets[0]) ?? 0,
    logoPath: reader.readStringOrNull(offsets[1]),
    name: reader.readStringOrNull(offsets[2]) ?? '',
    originCountry: reader.readStringOrNull(offsets[3]) ?? '',
  );
  return object;
}

P _networkDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? '') as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NetworkQueryFilter
    on QueryBuilder<Network, Network, QFilterCondition> {
  QueryBuilder<Network, Network, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Network, Network, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Network, Network, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Network, Network, QAfterFilterCondition> logoPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'logoPath',
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> logoPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'logoPath',
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> logoPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> logoPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> logoPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> logoPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'logoPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> logoPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> logoPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> logoPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> logoPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'logoPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> logoPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> logoPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'logoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Network, Network, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Network, Network, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Network, Network, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Network, Network, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Network, Network, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Network, Network, QAfterFilterCondition> nameContains(
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

  QueryBuilder<Network, Network, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<Network, Network, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> originCountryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition>
      originCountryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> originCountryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> originCountryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originCountry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> originCountryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> originCountryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> originCountryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> originCountryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originCountry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition> originCountryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<Network, Network, QAfterFilterCondition>
      originCountryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originCountry',
        value: '',
      ));
    });
  }
}

extension NetworkQueryObject
    on QueryBuilder<Network, Network, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ProductionCountrySchema = Schema(
  name: r'ProductionCountry',
  id: -7497362912796260614,
  properties: {
    r'iso31661': PropertySchema(
      id: 0,
      name: r'iso31661',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _productionCountryEstimateSize,
  serialize: _productionCountrySerialize,
  deserialize: _productionCountryDeserialize,
  deserializeProp: _productionCountryDeserializeProp,
);

int _productionCountryEstimateSize(
  ProductionCountry object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.iso31661.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _productionCountrySerialize(
  ProductionCountry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.iso31661);
  writer.writeString(offsets[1], object.name);
}

ProductionCountry _productionCountryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProductionCountry(
    iso31661: reader.readStringOrNull(offsets[0]) ?? '',
    name: reader.readStringOrNull(offsets[1]) ?? '',
  );
  return object;
}

P _productionCountryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readStringOrNull(offset) ?? '') as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ProductionCountryQueryFilter
    on QueryBuilder<ProductionCountry, ProductionCountry, QFilterCondition> {
  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iso31661',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iso31661',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iso31661',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iso31661',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'iso31661',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'iso31661',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iso31661',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iso31661',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iso31661',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iso31661',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameEqualTo(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameBetween(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension ProductionCountryQueryObject
    on QueryBuilder<ProductionCountry, ProductionCountry, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SeasonSchema = Schema(
  name: r'Season',
  id: 7798637676833157862,
  properties: {
    r'airDate': PropertySchema(
      id: 0,
      name: r'airDate',
      type: IsarType.dateTime,
    ),
    r'episodeCount': PropertySchema(
      id: 1,
      name: r'episodeCount',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 2,
      name: r'id',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'overview': PropertySchema(
      id: 4,
      name: r'overview',
      type: IsarType.string,
    ),
    r'posterPath': PropertySchema(
      id: 5,
      name: r'posterPath',
      type: IsarType.string,
    ),
    r'seasonNumber': PropertySchema(
      id: 6,
      name: r'seasonNumber',
      type: IsarType.long,
    ),
    r'voteAverage': PropertySchema(
      id: 7,
      name: r'voteAverage',
      type: IsarType.double,
    )
  },
  estimateSize: _seasonEstimateSize,
  serialize: _seasonSerialize,
  deserialize: _seasonDeserialize,
  deserializeProp: _seasonDeserializeProp,
);

int _seasonEstimateSize(
  Season object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.overview.length * 3;
  bytesCount += 3 + object.posterPath.length * 3;
  return bytesCount;
}

void _seasonSerialize(
  Season object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.airDate);
  writer.writeLong(offsets[1], object.episodeCount);
  writer.writeLong(offsets[2], object.id);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.overview);
  writer.writeString(offsets[5], object.posterPath);
  writer.writeLong(offsets[6], object.seasonNumber);
  writer.writeDouble(offsets[7], object.voteAverage);
}

Season _seasonDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Season(
    airDate: reader.readDateTimeOrNull(offsets[0]),
    episodeCount: reader.readLongOrNull(offsets[1]) ?? 0,
    id: reader.readLongOrNull(offsets[2]) ?? 0,
    name: reader.readStringOrNull(offsets[3]) ?? '',
    overview: reader.readStringOrNull(offsets[4]) ?? '',
    posterPath: reader.readStringOrNull(offsets[5]) ?? '',
    seasonNumber: reader.readLongOrNull(offsets[6]) ?? 0,
    voteAverage: reader.readDoubleOrNull(offsets[7]) ?? 0.0,
  );
  return object;
}

P _seasonDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 4:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 5:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 6:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 7:
      return (reader.readDoubleOrNull(offset) ?? 0.0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SeasonQueryFilter on QueryBuilder<Season, Season, QFilterCondition> {
  QueryBuilder<Season, Season, QAfterFilterCondition> airDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'airDate',
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> airDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'airDate',
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> airDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'airDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> airDateGreaterThan(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> airDateLessThan(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> airDateBetween(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> episodeCountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> episodeCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'episodeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> episodeCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'episodeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> episodeCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'episodeCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> overviewEqualTo(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> overviewGreaterThan(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> overviewLessThan(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> overviewBetween(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> overviewStartsWith(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> overviewEndsWith(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> overviewContains(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> overviewMatches(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> overviewIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> overviewIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> posterPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> posterPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> posterPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> posterPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'posterPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> posterPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> posterPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> posterPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> posterPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'posterPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> posterPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posterPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> posterPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'posterPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> seasonNumberEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seasonNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<Season, Season, QAfterFilterCondition> seasonNumberGreaterThan(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> seasonNumberLessThan(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> seasonNumberBetween(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> voteAverageEqualTo(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> voteAverageGreaterThan(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> voteAverageLessThan(
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

  QueryBuilder<Season, Season, QAfterFilterCondition> voteAverageBetween(
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
}

extension SeasonQueryObject on QueryBuilder<Season, Season, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SpokenLanguageSchema = Schema(
  name: r'SpokenLanguage',
  id: -9096190108023075228,
  properties: {
    r'englishName': PropertySchema(
      id: 0,
      name: r'englishName',
      type: IsarType.string,
    ),
    r'iso6391': PropertySchema(
      id: 1,
      name: r'iso6391',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _spokenLanguageEstimateSize,
  serialize: _spokenLanguageSerialize,
  deserialize: _spokenLanguageDeserialize,
  deserializeProp: _spokenLanguageDeserializeProp,
);

int _spokenLanguageEstimateSize(
  SpokenLanguage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.englishName.length * 3;
  bytesCount += 3 + object.iso6391.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _spokenLanguageSerialize(
  SpokenLanguage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.englishName);
  writer.writeString(offsets[1], object.iso6391);
  writer.writeString(offsets[2], object.name);
}

SpokenLanguage _spokenLanguageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SpokenLanguage(
    englishName: reader.readStringOrNull(offsets[0]) ?? '',
    iso6391: reader.readStringOrNull(offsets[1]) ?? '',
    name: reader.readStringOrNull(offsets[2]) ?? '',
  );
  return object;
}

P _spokenLanguageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 2:
      return (reader.readStringOrNull(offset) ?? '') as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SpokenLanguageQueryFilter
    on QueryBuilder<SpokenLanguage, SpokenLanguage, QFilterCondition> {
  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'englishName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'englishName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'englishName',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'englishName',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iso6391',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iso6391',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iso6391',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iso6391',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'iso6391',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'iso6391',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iso6391',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iso6391',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iso6391',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iso6391',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameEqualTo(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameBetween(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension SpokenLanguageQueryObject
    on QueryBuilder<SpokenLanguage, SpokenLanguage, QFilterCondition> {}
