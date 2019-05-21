.class final Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy$2;
.super Ljava/lang/Object;
.source "AndroidImageReaderProxy.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->setOnImageAvailableListener(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$listener:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy$2;->val$listener:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy$2;->val$listener:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable()V

    .line 113
    return-void
.end method
