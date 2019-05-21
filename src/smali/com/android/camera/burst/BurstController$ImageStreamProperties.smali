.class public final Lcom/android/camera/burst/BurstController$ImageStreamProperties;
.super Ljava/lang/Object;
.source "BurstController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageStreamProperties"
.end annotation


# instance fields
.field private final deviceOrientation:I

.field private final height:I

.field private final imageRotation:I

.field private final isMirrored:Z

.field private final width:I


# direct methods
.method public constructor <init>(IIIZI)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->width:I

    .line 44
    iput p2, p0, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->height:I

    .line 45
    iput p3, p0, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->imageRotation:I

    .line 46
    iput-boolean p4, p0, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->isMirrored:Z

    .line 47
    iput p5, p0, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->deviceOrientation:I

    .line 48
    return-void
.end method


# virtual methods
.method public final getDeviceOrientation()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->deviceOrientation:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->height:I

    return v0
.end method

.method public final getImageRotation()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->imageRotation:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->width:I

    return v0
.end method

.method public final isMirrored()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/camera/burst/BurstController$ImageStreamProperties;->isMirrored:Z

    return v0
.end method
