.class Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$FixedExposureMeasurer;
.super Ljava/lang/Object;
.source "ExposureTimeFilter.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$ExposureMeasurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FixedExposureMeasurer"
.end annotation


# instance fields
.field private final mExposure:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$FixedExposureMeasurer;->mExposure:F

    .line 114
    return-void
.end method


# virtual methods
.method public getFrameExposure(Lcom/google/android/libraries/smartburst/filterfw/Frame;)F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$FixedExposureMeasurer;->mExposure:F

    return v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method
