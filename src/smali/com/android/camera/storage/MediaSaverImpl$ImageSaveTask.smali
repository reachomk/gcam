.class final Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/MediaSaverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/io/InputStream;

.field private final date:J

.field private final exif:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private final listener:Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;

.field private final location:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mimeType:Lcom/android/camera/storage/MimeType;

.field private final orientation:I

.field private final resolver:Landroid/content/ContentResolver;

.field private synthetic this$0:Lcom/android/camera/storage/MediaSaverImpl;

.field private final title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/MediaSaverImpl;Ljava/io/InputStream;Ljava/lang/String;JLcom/google/common/base/Optional;IIILcom/android/camera/storage/MimeType;Lcom/google/common/base/Optional;Landroid/content/ContentResolver;Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;III",
            "Lcom/android/camera/storage/MimeType;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->this$0:Lcom/android/camera/storage/MediaSaverImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 127
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->data:Ljava/io/InputStream;

    .line 128
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->title:Ljava/lang/String;

    .line 129
    iput-wide p4, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->date:J

    .line 130
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    iput-object v0, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->location:Lcom/google/common/base/Optional;

    .line 131
    iput p7, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->width:I

    .line 132
    iput p8, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->height:I

    .line 133
    iput p9, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->orientation:I

    .line 134
    invoke-static {p10}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/MimeType;

    iput-object v0, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->mimeType:Lcom/android/camera/storage/MimeType;

    .line 135
    invoke-static {p11}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    iput-object v0, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->exif:Lcom/google/common/base/Optional;

    .line 136
    invoke-static {p12}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 137
    iput-object p13, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->listener:Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;

    .line 138
    return-void
.end method

.method private varargs doInBackground$51DKOQJ1EPGIUR31DPJIULJFD5I3MAACC5N68SJFD5I2URJ5EGNLASJ97C______()Landroid/net/Uri;
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 150
    :try_start_0
    iget v3, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->width:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->height:I

    if-nez v3, :cond_1

    .line 152
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 153
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 154
    iget-object v4, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->data:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 155
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->width:I

    .line 156
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->height:I

    .line 157
    iget-object v3, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->data:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 159
    :cond_1
    iget v3, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->width:I

    if-lez v3, :cond_2

    move v3, v1

    :goto_0
    const-string v4, "width must be set"

    invoke-static {v3, v4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 160
    iget v3, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->height:I

    if-lez v3, :cond_3

    :goto_1
    const-string v2, "height must be set"

    invoke-static {v1, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 161
    iget-object v1, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->this$0:Lcom/android/camera/storage/MediaSaverImpl;

    invoke-static {v1}, Lcom/android/camera/storage/MediaSaverImpl;->access$000(Lcom/android/camera/storage/MediaSaverImpl;)Lcom/android/camera/storage/Storage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->title:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->date:J

    iget-object v6, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->location:Lcom/google/common/base/Optional;

    iget v7, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->orientation:I

    iget-object v8, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->exif:Lcom/google/common/base/Optional;

    iget-object v9, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->data:Ljava/io/InputStream;

    iget v10, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->width:I

    iget v11, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->height:I

    iget-object v12, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->mimeType:Lcom/android/camera/storage/MimeType;

    invoke-interface/range {v1 .. v12}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLcom/google/common/base/Optional;ILcom/google/common/base/Optional;Ljava/io/InputStream;IILcom/android/camera/storage/MimeType;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    :goto_2
    return-object v0

    :cond_2
    move v3, v2

    .line 159
    goto :goto_0

    :cond_3
    move v1, v2

    .line 160
    goto :goto_1

    .line 163
    :catch_0
    move-exception v1

    .line 164
    invoke-static {}, Lcom/android/camera/storage/MediaSaverImpl;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to write data"

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->doInBackground$51DKOQJ1EPGIUR31DPJIULJFD5I3MAACC5N68SJFD5I2URJ5EGNLASJ97C______()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 103
    check-cast p1, Landroid/net/Uri;

    .line 1171
    iget-object v0, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->listener:Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->listener:Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 103
    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
