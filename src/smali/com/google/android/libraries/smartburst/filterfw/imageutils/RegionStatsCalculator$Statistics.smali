.class public Lcom/google/android/libraries/smartburst/filterfw/imageutils/RegionStatsCalculator$Statistics;
.super Ljava/lang/Object;
.source "RegionStatsCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/imageutils/RegionStatsCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Statistics"
.end annotation


# instance fields
.field public final mean:F

.field public final stdDev:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/RegionStatsCalculator$Statistics;->mean:F

    .line 40
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/RegionStatsCalculator$Statistics;->stdDev:F

    .line 41
    return-void
.end method
