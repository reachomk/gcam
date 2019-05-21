.class final Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;
.super Ljava/lang/Object;
.source "ThumbnailStreamOpener.java"


# static fields
.field private static final DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/mediastore/FileService;


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final query:Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;

.field private final service:Lcom/bumptech/glide/load/data/mediastore/FileService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/mediastore/FileService;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/mediastore/FileService;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/data/mediastore/FileService;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/mediastore/FileService;

    .line 34
    iput-object p2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->query:Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;

    .line 35
    iput-object p3, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 36
    iput-object p4, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->contentResolver:Landroid/content/ContentResolver;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;-><init>(Lcom/bumptech/glide/load/data/mediastore/FileService;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final getOrientation(Landroid/net/Uri;)I
    .locals 7

    .prologue
    .line 40
    const/4 v0, -0x1

    .line 41
    const/4 v2, 0x0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 44
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    iget-object v3, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getOrientation()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 50
    if-eqz v2, :cond_0

    .line 52
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    :try_start_2
    const-string v3, "ThumbStreamOpener"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    const-string v3, "ThumbStreamOpener"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Failed to open uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :cond_1
    if-eqz v2, :cond_0

    .line 52
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 55
    :catch_1
    move-exception v1

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 52
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 55
    :cond_2
    :goto_1
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public final open(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 62
    .line 65
    iget-object v1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->query:Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;->query(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 80
    :cond_0
    if-eqz v2, :cond_1

    .line 81
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_1
    :goto_0
    return-object v0

    .line 70
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    if-eqz v2, :cond_1

    .line 81
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1015
    :cond_3
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    .line 76
    if-eqz v1, :cond_6

    .line 2011
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 76
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    .line 77
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 80
    :goto_1
    if-eqz v2, :cond_4

    .line 81
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_4
    if-eqz v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 81
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method
