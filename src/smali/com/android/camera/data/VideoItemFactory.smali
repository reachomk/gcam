.class public final Lcom/android/camera/data/VideoItemFactory;
.super Ljava/lang/Object;
.source "VideoItemFactory.java"

# interfaces
.implements Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory",
        "<",
        "Lcom/android/camera/data/VideoItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final context:Landroid/content/Context;

.field private final glideManager:Lcom/android/camera/data/GlideFilmstripManager;

.field private final storage:Lcom/android/camera/storage/Storage;

.field private final videoDataFactory:Lcom/android/camera/data/VideoDataFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "VideoItemFact"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/VideoItemFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/storage/Storage;Lcom/android/camera/data/VideoDataFactory;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/camera/data/VideoItemFactory;->context:Landroid/content/Context;

    .line 42
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/camera/data/VideoItemFactory;->contentResolver:Landroid/content/ContentResolver;

    .line 43
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/GlideFilmstripManager;

    iput-object v0, p0, Lcom/android/camera/data/VideoItemFactory;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    .line 44
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/Storage;

    iput-object v0, p0, Lcom/android/camera/data/VideoItemFactory;->storage:Lcom/android/camera/storage/Storage;

    .line 45
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/VideoDataFactory;

    iput-object v0, p0, Lcom/android/camera/data/VideoItemFactory;->videoDataFactory:Lcom/android/camera/data/VideoDataFactory;

    .line 46
    return-void
.end method

.method private get(Landroid/database/Cursor;)Lcom/android/camera/data/VideoItem;
    .locals 4

    .prologue
    .line 50
    invoke-static {p1}, Lcom/android/camera/data/VideoDataFactory;->fromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/VideoItemData;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/android/camera/data/VideoItem;

    iget-object v2, p0, Lcom/android/camera/data/VideoItemFactory;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/data/VideoItemFactory;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/android/camera/data/VideoItem;-><init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/VideoItemData;Lcom/android/camera/data/VideoItemFactory;)V

    return-object v1
.end method


# virtual methods
.method public final createInProgress(Landroid/net/Uri;)Lcom/android/camera/data/VideoItem;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/android/camera/data/VideoItemFactory;->storage:Lcom/android/camera/storage/Storage;

    invoke-interface {v1, p1}, Lcom/android/camera/storage/Storage;->containsPlaceholderSize(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/camera/data/VideoItemFactory;->storage:Lcom/android/camera/storage/Storage;

    invoke-interface {v1, p1}, Lcom/android/camera/storage/Storage;->getSizeForSession(Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_0

    .line 121
    new-instance v2, Ljava/util/Date;

    iget-object v0, p0, Lcom/android/camera/data/VideoItemFactory;->storage:Lcom/android/camera/storage/Storage;

    invoke-interface {v0, p1}, Lcom/android/camera/storage/Storage;->getTimestampForSession(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 122
    new-instance v0, Lcom/android/camera/data/VideoItemDataBuilder;

    invoke-direct {v0, p1}, Lcom/android/camera/data/VideoItemDataBuilder;-><init>(Landroid/net/Uri;)V

    .line 124
    invoke-virtual {v0, v2}, Lcom/android/camera/data/VideoItemDataBuilder;->withCreationDate(Ljava/util/Date;)Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/VideoItemDataBuilder;

    .line 125
    invoke-virtual {v0, v2}, Lcom/android/camera/data/VideoItemDataBuilder;->withLastModifiedDate(Ljava/util/Date;)Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/VideoItemDataBuilder;

    new-instance v2, Lcom/android/camera/util/Size;

    invoke-direct {v2, v1}, Lcom/android/camera/util/Size;-><init>(Landroid/graphics/Point;)V

    .line 126
    invoke-virtual {v0, v2}, Lcom/android/camera/data/VideoItemDataBuilder;->withDimensions(Lcom/android/camera/util/Size;)Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/VideoItemDataBuilder;

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/camera/data/VideoItemDataBuilder;->withInProgress(Z)Lcom/android/camera/data/FilmstripItemDataBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/VideoItemDataBuilder;

    .line 128
    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemDataBuilder;->build()Lcom/android/camera/data/VideoItemData;

    move-result-object v1

    .line 130
    new-instance v0, Lcom/android/camera/data/VideoItem;

    iget-object v2, p0, Lcom/android/camera/data/VideoItemFactory;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/data/VideoItemFactory;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/android/camera/data/VideoItem;-><init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/VideoItemData;Lcom/android/camera/data/VideoItemFactory;)V

    goto :goto_0
.end method

.method public final bridge synthetic get(Landroid/database/Cursor;)Lcom/android/camera/data/FilmstripItem;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/data/VideoItemFactory;->get(Landroid/database/Cursor;)Lcom/android/camera/data/VideoItem;

    move-result-object v0

    return-object v0
.end method

.method public final get(Landroid/net/Uri;)Lcom/android/camera/data/VideoItem;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 62
    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/data/VideoItemFactory;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/camera/data/VideoDataQuery;->QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-direct {p0, v2}, Lcom/android/camera/data/VideoItemFactory;->get(Landroid/database/Cursor;)Lcom/android/camera/data/VideoItem;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 70
    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 75
    :cond_0
    :goto_1
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    .line 71
    sget-object v1, Lcom/android/camera/data/VideoItemFactory;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error in get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 72
    goto :goto_1

    .line 70
    :catch_2
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method public final queryAll(Landroid/net/Uri;J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/VideoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/camera/data/VideoItemFactory;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/camera/data/VideoDataQuery;->QUERY_PROJECTION:[Ljava/lang/String;

    const-wide/16 v4, -0x1

    const-string v6, "datetaken DESC, _id DESC"

    move-object v2, p1

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lcom/android/camera/data/FilmstripContentQueries;->forCameraPath(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;JLjava/lang/String;Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final queryUriAll(Landroid/net/Uri;J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "J)",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 91
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v7

    .line 92
    iget-object v1, p0, Lcom/android/camera/data/VideoItemFactory;->contentResolver:Landroid/content/ContentResolver;

    const-wide/16 v4, -0x1

    const-string v6, "datetaken DESC, _id DESC"

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/camera/data/FilmstripContentQueries;->forCameraPath(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;JLjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
