.class final Lcom/google/android/libraries/smartburst/utils/Interpolator$5;
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
    .line 46
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/Interpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public final interpolate(FFF)F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49
    cmpl-float v1, p3, v0

    if-nez v1, :cond_0

    .line 54
    :goto_0
    return p1

    .line 51
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-nez v1, :cond_1

    move p1, p2

    .line 52
    goto :goto_0

    :cond_1
    move p1, v0

    .line 54
    goto :goto_0
.end method
