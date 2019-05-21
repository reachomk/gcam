.class final Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$ImageListener;
.super Ljava/lang/Object;
.source "CopyingManagedImageWriter.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageListener"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$ImageListener;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;B)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$ImageListener;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;)V

    return-void
.end method


# virtual methods
.method public final onInputImageReleased()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$ImageListener;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->access$300(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 165
    const-string v1, "ImageWriter.ImageListener#onInputImageReleased called, but there are no in-flight images!"

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 170
    return-void
.end method
