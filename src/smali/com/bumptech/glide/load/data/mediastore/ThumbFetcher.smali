.class public final Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
.super Ljava/lang/Object;
.source "ThumbFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;,
        Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private final mediaStoreImageUri:Landroid/net/Uri;

.field private final opener:Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->mediaStoreImageUri:Landroid/net/Uri;

    .line 49
    iput-object p2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->opener:Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;

    .line 50
    return-void
.end method

.method private static build(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
    .locals 4

    .prologue
    .line 41
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    new-instance v2, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p2, v0, v3}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;-><init>(Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V

    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;-><init>(Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;)V

    .line 42
    return-object v1
.end method

.method public static buildImageFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->build(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    move-result-object v0

    return-object v0
.end method

.method public static buildVideoFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->build(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public final cleanup()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public final loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback",
            "<-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 55
    .line 1068
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->opener:Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;

    iget-object v1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->mediaStoreImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->open(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 1071
    if-eqz v1, :cond_2

    .line 1072
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->opener:Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;

    iget-object v2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->mediaStoreImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->getOrientation(Landroid/net/Uri;)I

    move-result v0

    move v2, v0

    .line 1075
    :goto_0
    if-eq v2, v3, :cond_1

    .line 1076
    new-instance v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/data/ExifOrientationStream;-><init>(Ljava/io/InputStream;I)V

    .line 55
    :goto_1
    iput-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->inputStream:Ljava/io/InputStream;

    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 65
    :goto_2
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v1, "MediaStoreThumbFetcher"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "MediaStoreThumbFetcher"

    const-string v2, "Failed to find thumbnail file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_0
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0
.end method
