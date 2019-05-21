.class public Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;
.super Ljava/lang/Object;
.source "ImageStatistics.java"


# instance fields
.field private final mMaxBlockMeanGray:F

.field private final mMaxBlockPerceptualSharpness:F

.field private final mMaxBlockVarianceGray:F

.field private final mMaxGray:I

.field private final mMeanGray:F

.field private final mMinBlockMeanGray:F

.field private final mMinBlockVarianceGray:F

.field private final mMinGray:I

.field private final mPerceptualSharpness:F

.field private final mTimestampNs:J

.field private final mVarianceGray:F


# direct methods
.method public constructor <init>(FFIIFFFFFFJ)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mPerceptualSharpness:F

    .line 56
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMeanGray:F

    .line 57
    iput p3, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMaxGray:I

    .line 58
    iput p4, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMinGray:I

    .line 59
    iput p5, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mVarianceGray:F

    .line 60
    iput p6, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMaxBlockPerceptualSharpness:F

    .line 61
    iput p7, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMaxBlockMeanGray:F

    .line 62
    iput p8, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMinBlockMeanGray:F

    .line 63
    iput p9, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMaxBlockVarianceGray:F

    .line 64
    iput p10, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMinBlockVarianceGray:F

    .line 65
    iput-wide p11, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mTimestampNs:J

    .line 66
    return-void
.end method


# virtual methods
.method public getMaxBlockMeanGray()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMaxBlockMeanGray:F

    return v0
.end method

.method public getMaxBlockPerceptualSharpness()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMaxBlockPerceptualSharpness:F

    return v0
.end method

.method public getMaxBlockVarianceGray()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMaxBlockVarianceGray:F

    return v0
.end method

.method public getMaxGray()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMaxGray:I

    return v0
.end method

.method public getMeanGray()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMeanGray:F

    return v0
.end method

.method public getMinBlockMeanGray()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMinBlockMeanGray:F

    return v0
.end method

.method public getMinBlockVarianceGray()F
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMinBlockVarianceGray:F

    return v0
.end method

.method public getMinGray()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mMinGray:I

    return v0
.end method

.method public getPerceptualSharpness()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mPerceptualSharpness:F

    return v0
.end method

.method public getTimestampNs()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mTimestampNs:J

    return-wide v0
.end method

.method public getVarianceGray()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->mVarianceGray:F

    return v0
.end method
