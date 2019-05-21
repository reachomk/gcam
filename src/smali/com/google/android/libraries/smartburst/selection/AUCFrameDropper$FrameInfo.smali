.class final Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;
.super Ljava/lang/Object;
.source "AUCFrameDropper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameInfo"
.end annotation


# instance fields
.field public adjustedMotionSaliency:F

.field public final baseMotionSaliency:F

.field public beliefMotionBlur:F

.field public motionIntegral:D

.field public final passedFilter:Z

.field public final qualityScore:F

.field public final sharpnessScore:F

.field public smoothedMotionSaliency:F

.field public final timestamp:J

.field public transformedMotionSaliency:F


# direct methods
.method public constructor <init>(JFFFZ)V
    .locals 1

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput-wide p1, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->timestamp:J

    .line 895
    iput p3, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->baseMotionSaliency:F

    .line 896
    iput p4, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->sharpnessScore:F

    .line 897
    iput p5, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->qualityScore:F

    .line 898
    iput-boolean p6, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->passedFilter:Z

    .line 899
    return-void
.end method
