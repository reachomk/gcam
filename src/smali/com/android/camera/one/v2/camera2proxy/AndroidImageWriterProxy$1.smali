.class final Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy$1;
.super Ljava/lang/Object;
.source "AndroidImageWriterProxy.java"

# interfaces
.implements Landroid/media/ImageWriter$OnImageReleasedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->setImageListener(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$listener:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy$1;->val$listener:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageReleased(Landroid/media/ImageWriter;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy$1;->val$listener:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;->onInputImageReleased()V

    .line 97
    return-void
.end method
