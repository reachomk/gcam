.class public final Lcom/android/camera/data/PhotoItemFactory;
.super Ljava/lang/Object;
.source "PhotoItemFactory.java"

# interfaces
.implements Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory",
        "<",
        "Lcom/android/camera/data/PhotoItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final context:Landroid/content/Context;

.field private final glideManager:Lcom/android/camera/data/GlideFilmstripManager;

.field private final photoDataFactory:Lcom/android/camera/data/PhotoDataFactory;

.field private final storage:Lcom/android/camera/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "PhotoItemFact"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/PhotoItemFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Landroid/content/ContentResolver;Lcom/android/camera/data/PhotoDataFactory;Lcom/android/camera/storage/Storage;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/camera/data/PhotoItemFactory;->context:Landroid/content/Context;

    .line 37
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/GlideFilmstripManager;

    iput-object v0, p0, Lcom/android/camera/data/PhotoItemFactory;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    .line 38
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/camera/data/PhotoItemFactory;->contentResolver:Landroid/content/ContentResolver;

    .line 39
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/PhotoDataFactory;

    iput-object v0, p0, Lcom/android/camera/data/PhotoItemFactory;->photoDataFactory:Lcom/android/camera/data/PhotoDataFactory;

    .line 40
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/Storage;

    iput-object v0, p0, Lcom/android/camera/data/PhotoItemFactory;->storage:Lcom/android/camera/storage/Storage;

    .line 41
    return-void
.end method

.method private get(Landroid/database/Cursor;)Lcom/android/camera/data/PhotoItem;
    .locals 6

    .prologue
    .line 45
    invoke-static {p1}, Lcom/android/camera/data/PhotoDataFactory;->fromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    .line 47
    new-instance v0, Lcom/android/camera/data/PhotoItem;

    iget-object v1, p0, Lcom/android/camera/data/PhotoItemFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/data/PhotoItemFactory;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v5, p0, Lcom/android/camera/data/PhotoItemFactory;->storage:Lcom/android/camera/storage/Storage;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/PhotoItem;-><init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/FilmstripItemData;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/storage/Storage;)V

    return-object v0
.end method


# virtual methods
.method public final createInProgress(Landroid/net/Uri;Z)Lcom/android/camera/data/PhotoItem;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/android/camera/data/PhotoItemFactory;->storage:Lcom/android/camera/storage/Storage;

    invoke-interface {v1, p1}, Lcom/android/camera/storage/Storage;->containsPlaceholderSize(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/android/camera/data/PhotoItemFactory;->storage:Lcom/android/camera/storage/Storage;

    invoke-interface {v1, p1}, Lcom/android/camera/storage/Storage;->getSizeForSession(Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v3

    .line 116
    if-eqz v3, :cond_0

    .line 119
    new-instance v0, Lcom/android/camera/data/PhotoItem;

    iget-object v1, p0, Lcom/android/camera/data/PhotoItemFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/data/PhotoItemFactory;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    new-instance v4, Lcom/android/camera/util/Size;

    invoke-direct {v4, v3}, Lcom/android/camera/util/Size;-><init>(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/android/camera/data/PhotoItemFactory;->storage:Lcom/android/camera/storage/Storage;

    .line 123
    invoke-interface {v3, p1}, Lcom/android/camera/storage/Storage;->getTimestampForSession(Landroid/net/Uri;)J

    move-result-wide v6

    .line 122
    invoke-static {p1, v4, v6, v7, p2}, Lcom/android/camera/data/PhotoItem;->makeSessionData(Landroid/net/Uri;Lcom/android/camera/util/Size;JZ)Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/data/PhotoItemFactory;->storage:Lcom/android/camera/storage/Storage;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/PhotoItem;-><init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/FilmstripItemData;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/storage/Storage;)V

    goto :goto_0
.end method

.method public final bridge synthetic get(Landroid/database/Cursor;)Lcom/android/camera/data/FilmstripItem;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/data/PhotoItemFactory;->get(Landroid/database/Cursor;)Lcom/android/camera/data/PhotoItem;

    move-result-object v0

    return-object v0
.end method

.method public final get(Landroid/net/Uri;)Lcom/android/camera/data/PhotoItem;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 56
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/data/PhotoItemFactory;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/camera/data/PhotoDataQuery;->QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-direct {p0, v2}, Lcom/android/camera/data/PhotoItemFactory;->get(Landroid/database/Cursor;)Lcom/android/camera/data/PhotoItem;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 63
    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 68
    :cond_0
    :goto_1
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
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

    .line 64
    sget-object v1, Lcom/android/camera/data/PhotoItemFactory;->TAG:Ljava/lang/String;

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

    .line 65
    goto :goto_1

    .line 63
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
            "Lcom/android/camera/data/PhotoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/camera/data/PhotoItemFactory;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/camera/data/PhotoDataQuery;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v6, "_id DESC"

    move-object v2, p1

    move-wide v4, p2

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

    .line 90
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v7

    .line 91
    iget-object v1, p0, Lcom/android/camera/data/PhotoItemFactory;->contentResolver:Landroid/content/ContentResolver;

    const-wide/16 v4, -0x1

    const-string v6, "_id DESC"

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/camera/data/FilmstripContentQueries;->forCameraPath(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;JLjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
