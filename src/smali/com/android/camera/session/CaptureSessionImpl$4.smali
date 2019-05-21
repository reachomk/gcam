.class final Lcom/android/camera/session/CaptureSessionImpl$4;
.super Ljava/lang/Object;
.source "CaptureSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionImpl;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/session/CaptureSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionImpl;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 587
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$800(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/TemporarySessionFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/session/TemporarySessionFile;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$900(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/storage/FilesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionImpl;->access$800(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/TemporarySessionFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/session/TemporarySessionFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/FilesProxy;->toByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 598
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 599
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 600
    array-length v1, v6

    invoke-static {v6, v4, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 601
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 602
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 606
    :try_start_1
    new-instance v5, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v5}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 607
    invoke-virtual {v5, v6}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 612
    :goto_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static/range {v0 .. v5}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->saveAndFinish(Lcom/android/camera/session/SessionBase;Ljava/io/InputStream;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 619
    :cond_0
    :goto_1
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    const-string v5, "Could not read exif: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1000(Lcom/android/camera/session/CaptureSessionImpl;Ljava/lang/String;)V

    .line 610
    const/4 v5, 0x0

    goto :goto_0

    .line 609
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 591
    :catch_1
    move-exception v0

    goto :goto_1
.end method
