.class public final Lcom/android/camera/hdrplus/HdrPlusFrameMarker;
.super Ljava/lang/Object;
.source "HdrPlusFrameMarker.java"


# instance fields
.field private burstId:I

.field public frameIndex:I

.field public frameType:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->burstId:I

    .line 13
    iput p2, p0, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameType:I

    .line 14
    iput p3, p0, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameIndex:I

    .line 15
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 19
    if-nez p1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v0

    .line 23
    :cond_1
    instance-of v1, p1, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;

    if-eqz v1, :cond_0

    .line 27
    check-cast p1, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;

    .line 29
    iget v1, p0, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->burstId:I

    iget v2, p1, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->burstId:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameType:I

    iget v2, p1, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameType:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameIndex:I

    iget v2, p1, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameIndex:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 34
    iget v0, p0, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameType:I

    iget v1, p0, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameIndex:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->burstId:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method
