.class public final Lcom/android/camera/session/PlaceholderManager;
.super Ljava/lang/Object;
.source "PlaceholderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/session/PlaceholderManager$Placeholder;
    }
.end annotation


# static fields
.field private static final NO_POOL_ADAPTER:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;


# instance fields
.field private final context:Landroid/content/Context;

.field private final storage:Lcom/android/camera/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "PlaceholderMgr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;-><init>()V

    sput-object v0, Lcom/android/camera/session/PlaceholderManager;->NO_POOL_ADAPTER:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/storage/Storage;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/camera/session/PlaceholderManager;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/camera/session/PlaceholderManager;->storage:Lcom/android/camera/storage/Storage;

    .line 54
    return-void
.end method

.method private final createDrawableResourceFromBitmap(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/camera/session/PlaceholderManager;->context:Landroid/content/Context;

    .line 241
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/android/camera/session/PlaceholderManager;->NO_POOL_ADAPTER:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;-><init>(Landroid/graphics/drawable/BitmapDrawable;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 240
    return-object v0
.end method

.method private final createSessionFromUri(Landroid/net/Uri;)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 208
    iget-object v0, p0, Lcom/android/camera/session/PlaceholderManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "datetaken"

    aput-object v1, v2, v4

    const/4 v1, 0x1

    const-string v4, "_display_name"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 211
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 221
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 236
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_1
    :goto_0
    return-object v3

    .line 224
    :cond_2
    :try_start_1
    const-string v0, "datetaken"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 225
    const-string v1, "_display_name"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 227
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 228
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 229
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/android/camera/storage/MimeType;->JPEG:Lcom/android/camera/storage/MimeType;

    invoke-virtual {v6}, Lcom/android/camera/storage/MimeType;->getFilenameExtension()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Lcom/android/camera/storage/MimeType;->JPEG:Lcom/android/camera/storage/MimeType;

    invoke-virtual {v7}, Lcom/android/camera/storage/MimeType;->getFilenameExtension()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 235
    :goto_1
    new-instance v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-direct {v0, v1, p1, v4, v5}, Lcom/android/camera/session/PlaceholderManager$Placeholder;-><init>(Ljava/lang/String;Landroid/net/Uri;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v3, v0

    .line 235
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_4

    if-eqz v3, :cond_5

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_3
    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final convertToPlaceholder(Landroid/net/Uri;)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/camera/session/PlaceholderManager;->createSessionFromUri(Landroid/net/Uri;)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    return-object v0
.end method

.method public final finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Lcom/android/camera/session/MediaInfo;Ljava/io/InputStream;)Landroid/net/Uri;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p2}, Lcom/android/camera/session/MediaInfo;->getMimeType()Lcom/android/camera/storage/MimeType;

    move-result-object v12

    .line 135
    invoke-virtual {p2}, Lcom/android/camera/session/MediaInfo;->getSize()Lcom/android/camera/util/Size;

    move-result-object v9

    .line 136
    invoke-virtual {v12}, Lcom/android/camera/storage/MimeType;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/session/PlaceholderManager;->storage:Lcom/android/camera/storage/Storage;

    iget-object v1, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/PlaceholderManager;->context:Landroid/content/Context;

    .line 140
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputTitle:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->time:J

    .line 143
    invoke-virtual {p2}, Lcom/android/camera/session/MediaInfo;->getLocation()Lcom/google/common/base/Optional;

    move-result-object v6

    .line 144
    invoke-virtual {p2}, Lcom/android/camera/session/MediaInfo;->getDuration()Lcom/google/common/base/Optional;

    move-result-object v7

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 146
    invoke-virtual {v9}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v10

    .line 147
    invoke-virtual {v9}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v11

    move-object/from16 v9, p3

    .line 138
    invoke-interface/range {v0 .. v12}, Lcom/android/camera/storage/Storage;->updateVideo(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLcom/google/common/base/Optional;JLjava/io/InputStream;IILcom/android/camera/storage/MimeType;)Landroid/net/Uri;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/PlaceholderManager;->storage:Lcom/android/camera/storage/Storage;

    iget-object v1, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/PlaceholderManager;->context:Landroid/content/Context;

    .line 153
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputTitle:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->time:J

    .line 156
    invoke-virtual {p2}, Lcom/android/camera/session/MediaInfo;->getLocation()Lcom/google/common/base/Optional;

    move-result-object v6

    .line 157
    invoke-virtual {p2}, Lcom/android/camera/session/MediaInfo;->getOrientation()Lcom/google/common/base/Optional;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 158
    invoke-virtual {p2}, Lcom/android/camera/session/MediaInfo;->getExif()Lcom/google/common/base/Optional;

    move-result-object v8

    .line 160
    invoke-virtual {v9}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v10

    .line 161
    invoke-virtual {v9}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v11

    move-object/from16 v9, p3

    .line 151
    invoke-interface/range {v0 .. v12}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLcom/google/common/base/Optional;ILcom/google/common/base/Optional;Ljava/io/InputStream;IILcom/android/camera/storage/MimeType;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)Lcom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/session/PlaceholderManager$Placeholder;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/DrawableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/session/PlaceholderManager;->storage:Lcom/android/camera/storage/Storage;

    iget-object v1, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/storage/Storage;->getPlaceholderForSession(Landroid/net/Uri;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final insertEmptyPlaceholder(Ljava/lang/String;Lcom/android/camera/util/Size;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/session/PlaceholderManager;->storage:Lcom/android/camera/storage/Storage;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/camera/storage/Storage;->addEmptyPlaceholder(Lcom/android/camera/util/Size;J)Landroid/net/Uri;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/android/camera/session/PlaceholderManager$Placeholder;-><init>(Ljava/lang/String;Landroid/net/Uri;J)V

    return-object v1
.end method

.method public final insertPlaceholder(Ljava/lang/String;Landroid/graphics/Bitmap;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p2}, Lcom/android/camera/session/PlaceholderManager;->createDrawableResourceFromBitmap(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/camera/session/PlaceholderManager;->insertPlaceholder(Ljava/lang/String;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    return-object v0
.end method

.method public final insertPlaceholder(Ljava/lang/String;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 3

    .prologue
    .line 93
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument passed to insertPlaceholder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/camera/session/PlaceholderManager;->storage:Lcom/android/camera/storage/Storage;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/camera/storage/Storage;->addPlaceholder(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;J)Landroid/net/Uri;

    move-result-object v1

    .line 98
    if-nez v1, :cond_2

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-direct {v0, p1, v1, p3, p4}, Lcom/android/camera/session/PlaceholderManager$Placeholder;-><init>(Ljava/lang/String;Landroid/net/Uri;J)V

    goto :goto_0
.end method

.method public final removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/session/PlaceholderManager;->storage:Lcom/android/camera/storage/Storage;

    iget-object v1, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/storage/Storage;->removePlaceholder(Landroid/net/Uri;)V

    .line 198
    return-void
.end method

.method public final replacePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0, p2}, Lcom/android/camera/session/PlaceholderManager;->createDrawableResourceFromBitmap(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/session/PlaceholderManager;->replacePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;)V

    .line 180
    return-void
.end method

.method public final replacePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;)V
    .locals 2

    .prologue
    .line 174
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/android/camera/session/PlaceholderManager;->storage:Lcom/android/camera/storage/Storage;

    iget-object v1, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p2}, Lcom/android/camera/storage/Storage;->replacePlaceholder(Landroid/net/Uri;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;)V

    .line 176
    return-void
.end method
