.class final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorOnImageAvailableListener;
.super Ljava/lang/Object;
.source "ImageDistributorOnImageAvailableListener.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;


# instance fields
.field private final imageDistributor:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorOnImageAvailableListener;->imageDistributor:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    .line 20
    return-void
.end method


# virtual methods
.method public final onImageAvailable()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorOnImageAvailableListener;->imageDistributor:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->update()V

    .line 25
    return-void
.end method
