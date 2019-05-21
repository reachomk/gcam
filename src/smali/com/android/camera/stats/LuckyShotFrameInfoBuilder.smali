.class public Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;
.super Ljava/lang/Object;
.source "LuckyShotFrameInfoBuilder.java"


# static fields
.field public static final FACIAL_COUNT_UNKNOWN:I = -0x1


# instance fields
.field private final durationNs:J

.field private final eyeScore:F

.field private final faceCount:I

.field private final metricType:Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;

.field private final overallScore:F

.field private final smileScore:F


# direct methods
.method public constructor <init>(Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;IFFFJ)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->metricType:Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;

    .line 38
    iput p2, p0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->faceCount:I

    .line 39
    iput p3, p0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->overallScore:F

    .line 40
    iput p4, p0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->eyeScore:F

    .line 41
    iput p5, p0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->smileScore:F

    .line 42
    iput-wide p6, p0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->durationNs:J

    .line 43
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;-><init>()V

    .line 52
    iget v1, p0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->faceCount:I

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;->faceCount:I

    .line 53
    iget v1, p0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->overallScore:F

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;->luckyShotOverallScore:F

    .line 54
    iget v1, p0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->eyeScore:F

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;->luckyShotEyeScore:F

    .line 55
    iget v1, p0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->smileScore:F

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;->luckyShotSmileScore:F

    .line 56
    iget-wide v2, p0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->durationNs:J

    iput-wide v2, v0, Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;->computeDurationNs:J

    .line 57
    return-object v0
.end method

.method public getMetricType()Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->metricType:Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;

    return-object v0
.end method
