.class final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$Route;
.super Ljava/lang/Object;
.source "ImageDistributorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Route"
.end annotation


# instance fields
.field public final imageStream:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

.field public final requestedImages:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$Route;->requestedImages:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    .line 61
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$Route;->imageStream:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;B)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$Route;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)V

    return-void
.end method
