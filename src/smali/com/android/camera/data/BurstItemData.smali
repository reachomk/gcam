.class public final Lcom/android/camera/data/BurstItemData;
.super Lcom/android/camera/data/FilmstripItemData;
.source "BurstItemData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/BurstItemData$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final burstList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/BurstFrameItem;",
            ">;"
        }
    .end annotation
.end field

.field private burstListIsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "BurstItemData"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/BurstItemData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/camera/util/Size;JILcom/android/camera/data/Location;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Lcom/android/camera/util/Size;",
            "JI",
            "Lcom/android/camera/data/Location;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/BurstFrameItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .line 65
    invoke-static/range {p10 .. p10}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v13

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v14, p11

    move/from16 v16, p13

    move-object/from16 v17, p14

    .line 56
    invoke-direct/range {v3 .. v18}, Lcom/android/camera/data/FilmstripItemData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;ZLcom/google/common/base/Optional;JILcom/android/camera/data/Location;Z)V

    .line 40
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/data/BurstItemData;->burstListIsSorted:Z

    .line 70
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/data/BurstItemData;->burstList:Ljava/util/List;

    .line 72
    return-void
.end method

.method public static createFromListOfBurstFrames(Landroid/net/Uri;Ljava/util/List;)Lcom/android/camera/data/BurstItemData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/BurstFrameItem;",
            ">;)",
            "Lcom/android/camera/data/BurstItemData;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Cannot create BurstItem from empty burst"

    invoke-static {v0, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 153
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/FilmstripItem;

    .line 154
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v4

    .line 156
    const-wide/16 v0, 0x0

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/FilmstripItem;

    .line 159
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getSizeInBytes()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 160
    goto :goto_1

    :cond_0
    move v0, v1

    .line 149
    goto :goto_0

    .line 163
    :cond_1
    new-instance v0, Lcom/android/camera/data/BurstItemData$Builder;

    invoke-direct {v0, p0}, Lcom/android/camera/data/BurstItemData$Builder;-><init>(Landroid/net/Uri;)V

    .line 164
    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 2068
    iput-object v1, v0, Lcom/android/camera/data/FilmstripItemDataBuilder;->title:Ljava/lang/String;

    .line 2069
    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemDataBuilder;->getBuilder()Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    .line 164
    check-cast v0, Lcom/android/camera/data/BurstItemData$Builder;

    .line 165
    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/BurstItemData$Builder;->withCreationDate(Ljava/util/Date;)Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstItemData$Builder;

    .line 166
    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/BurstItemData$Builder;->withLastModifiedDate(Ljava/util/Date;)Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstItemData$Builder;

    new-instance v1, Ljava/io/File;

    .line 167
    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 2088
    iput-object v1, v0, Lcom/android/camera/data/FilmstripItemDataBuilder;->filePath:Ljava/lang/String;

    .line 2089
    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemDataBuilder;->getBuilder()Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    .line 167
    check-cast v0, Lcom/android/camera/data/BurstItemData$Builder;

    .line 2103
    iput-wide v2, v0, Lcom/android/camera/data/FilmstripItemDataBuilder;->sizeInBytes:J

    .line 2104
    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemDataBuilder;->getBuilder()Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    .line 168
    check-cast v0, Lcom/android/camera/data/BurstItemData$Builder;

    .line 169
    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/BurstItemData$Builder;->withDimensions(Lcom/android/camera/util/Size;)Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstItemData$Builder;

    .line 170
    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getLocation()Lcom/android/camera/data/Location;

    move-result-object v1

    .line 2113
    iput-object v1, v0, Lcom/android/camera/data/FilmstripItemDataBuilder;->location:Lcom/android/camera/data/Location;

    .line 2114
    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemDataBuilder;->getBuilder()Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    .line 170
    check-cast v0, Lcom/android/camera/data/BurstItemData$Builder;

    .line 171
    invoke-virtual {v0, p1}, Lcom/android/camera/data/BurstItemData$Builder;->withBurstList(Ljava/util/List;)Lcom/android/camera/data/BurstItemData$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData$Builder;->build()Lcom/android/camera/data/BurstItemData;

    move-result-object v0

    .line 163
    return-object v0
.end method

.method public static createFromSessionUri(Landroid/net/Uri;Lcom/android/camera/storage/Storage;)Lcom/android/camera/data/BurstItemData;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-interface {p1, p0}, Lcom/android/camera/storage/Storage;->containsPlaceholderSize(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 185
    :cond_1
    invoke-interface {p1, p0}, Lcom/android/camera/storage/Storage;->getSizeForSession(Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_0

    .line 189
    new-instance v2, Ljava/util/Date;

    invoke-interface {p1, p0}, Lcom/android/camera/storage/Storage;->getTimestampForSession(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 190
    new-instance v0, Lcom/android/camera/data/BurstItemData$Builder;

    invoke-direct {v0, p0}, Lcom/android/camera/data/BurstItemData$Builder;-><init>(Landroid/net/Uri;)V

    .line 191
    invoke-virtual {v0, v2}, Lcom/android/camera/data/BurstItemData$Builder;->withCreationDate(Ljava/util/Date;)Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstItemData$Builder;

    .line 192
    invoke-virtual {v0, v2}, Lcom/android/camera/data/BurstItemData$Builder;->withLastModifiedDate(Ljava/util/Date;)Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstItemData$Builder;

    new-instance v2, Lcom/android/camera/util/Size;

    invoke-direct {v2, v1}, Lcom/android/camera/util/Size;-><init>(Landroid/graphics/Point;)V

    .line 193
    invoke-virtual {v0, v2}, Lcom/android/camera/data/BurstItemData$Builder;->withDimensions(Lcom/android/camera/util/Size;)Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstItemData$Builder;

    const/4 v1, 0x1

    .line 194
    invoke-virtual {v0, v1}, Lcom/android/camera/data/BurstItemData$Builder;->withInProgress(Z)Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstItemData$Builder;

    .line 195
    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData$Builder;->build()Lcom/android/camera/data/BurstItemData;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBestShot(Ljava/util/List;)Lcom/android/camera/data/BurstFrameItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/camera/data/BurstFrameItem;",
            ">;)",
            "Lcom/android/camera/data/BurstFrameItem;"
        }
    .end annotation

    .prologue
    .line 311
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    .line 313
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->isCover()Z
    :try_end_0
    .catch Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$FieldInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 318
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isBurstFeatureTableFile(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 241
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_0

    const-string v2, "feature_table.bin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBurstFrameSavingInProgressFile(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 269
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_0

    const-string v2, ".burst_in_progress.lock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBurstMedResFramesDirectory(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 283
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 287
    if-eqz v1, :cond_0

    const-string v2, ".medresframes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBurstMetadataStoreFile(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 255
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_0

    const-string v2, "metadatastore.bin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFileNamePartOfBurst(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 228
    if-nez p0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/smartburst/storage/names/FileNames;->getBurstStackParser()Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;->isBurstFile(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isFilePartOfBurst(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 215
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/data/BurstItemData;->isFileNamePartOfBurst(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isItemPartOfBurst(Lcom/android/camera/data/FilmstripItem;)Z
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/data/BurstItemData;->isFilePartOfBurst(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static sortBurstsUsingSequenceIds(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/BurstFrameItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 427
    const/4 v0, -0x1

    .line 429
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v4, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    .line 431
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->getSequenceId()I
    :try_end_0
    .catch Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$FieldInvalidException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 432
    if-le v0, v4, :cond_0

    move v4, v0

    .line 443
    goto :goto_0

    :cond_0
    move v1, v3

    .line 442
    goto :goto_0

    .line 445
    :cond_1
    if-eqz v1, :cond_2

    move v3, v2

    .line 476
    :goto_1
    return v3

    .line 450
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v0, v4, 0x1

    const/4 v4, 0x0

    .line 451
    invoke-static {v0, v4}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 452
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    .line 454
    :try_start_1
    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->getSequenceId()I

    move-result v5

    invoke-virtual {v1, v5, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$FieldInvalidException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 457
    :catch_0
    move-exception v0

    goto :goto_1

    .line 463
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 464
    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 465
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 466
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    .line 467
    if-eqz v0, :cond_4

    .line 471
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 472
    invoke-interface {v3, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move v3, v2

    .line 476
    goto :goto_1

    .line 441
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final getBestList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/BurstFrameItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/data/BurstItemData;->getBurstList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    .line 109
    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->isExtra()Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getBurstList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/BurstFrameItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    .line 1406
    iget-boolean v0, p0, Lcom/android/camera/data/BurstItemData;->burstListIsSorted:Z

    if-nez v0, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/android/camera/data/BurstItemData;->burstList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/camera/data/BurstItemData;->sortBurstsUsingSequenceIds(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/android/camera/data/BurstItemData;->burstList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1414
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/data/BurstItemData;->burstListIsSorted:Z

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/BurstItemData;->burstList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getBurstListSize()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/data/BurstItemData;->burstList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getCoverItem()Lcom/android/camera/data/FilmstripItem;
    .locals 7

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/camera/data/BurstItemData;->burstList:Ljava/util/List;

    .line 1327
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    invoke-static {v1}, Lcom/android/camera/data/BurstItemData;->getBestShot(Ljava/util/List;)Lcom/android/camera/data/BurstFrameItem;

    move-result-object v0

    .line 1330
    if-eqz v0, :cond_0

    .line 1342
    :goto_0
    return-object v0

    .line 1333
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1335
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/FilmstripItem;

    .line 1336
    sget-object v1, Lcom/android/camera/data/BurstItemData;->TAG:Ljava/lang/String;

    .line 1339
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1341
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1b

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Using first item as cover:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1336
    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1344
    :cond_1
    const/4 v0, 0x0

    .line 76
    goto :goto_0
.end method

.method public final refreshBurstFrames()V
    .locals 5

    .prologue
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/android/camera/data/BurstItemData;->burstList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    iget-object v1, p0, Lcom/android/camera/data/BurstItemData;->burstList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 132
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/data/BurstFrameItem;

    .line 133
    invoke-virtual {v1}, Lcom/android/camera/data/BurstFrameItem;->refresh()Lcom/android/camera/data/BurstFrameItem;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_0

    .line 135
    iget-object v4, p0, Lcom/android/camera/data/BurstItemData;->burstList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_1
    return-void
.end method

.method public final removeItem(Lcom/android/camera/data/BurstFrameItem;)Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/data/BurstItemData;->burstList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
