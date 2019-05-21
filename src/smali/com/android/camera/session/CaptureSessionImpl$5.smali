.class final Lcom/android/camera/session/CaptureSessionImpl$5;
.super Ljava/lang/Object;
.source "CaptureSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionImpl;->updatePreview()V
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
    .line 647
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl$5;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$5;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$900(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/storage/FilesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl$5;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionImpl;->access$800(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/TemporarySessionFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/session/TemporarySessionFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/FilesProxy;->toByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 663
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 667
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 668
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl$5;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    const-string v2, "Could not decode preview file: "

    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$5;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    .line 669
    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$800(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/TemporarySessionFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/session/TemporarySessionFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1000(Lcom/android/camera/session/CaptureSessionImpl;Ljava/lang/String;)V

    .line 676
    :goto_1
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 657
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl$5;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl$5;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    .line 658
    invoke-static {v2}, Lcom/android/camera/session/CaptureSessionImpl;->access$800(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/TemporarySessionFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/session/TemporarySessionFile;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Could not read preview file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-static {v1, v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1000(Lcom/android/camera/session/CaptureSessionImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 669
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$5;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$300(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/PlaceholderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl$5;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    .line 674
    invoke-static {v2}, Lcom/android/camera/session/CaptureSessionImpl;->access$1100(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;

    new-instance v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    invoke-direct {v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;-><init>()V

    invoke-direct {v3, v1, v4}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;-><init>(Landroid/graphics/drawable/BitmapDrawable;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 673
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/session/PlaceholderManager;->replacePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;)V

    .line 675
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$5;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$700(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl$5;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionImpl;->access$500(Lcom/android/camera/session/CaptureSessionImpl;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/session/SessionNotifier;->notifySessionUpdated(Landroid/net/Uri;)V

    goto :goto_1
.end method
