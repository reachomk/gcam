.class final Lcom/google/android/libraries/smartburst/utils/Interpolator$4;
.super Lcom/google/android/libraries/smartburst/utils/Interpolator;
.source "Interpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/utils/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/Interpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public final interpolate(FFF)F
    .locals 1

    .prologue
    .line 41
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method
