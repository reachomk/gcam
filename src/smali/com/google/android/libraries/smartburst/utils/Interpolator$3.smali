.class final Lcom/google/android/libraries/smartburst/utils/Interpolator$3;
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
    .line 30
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/Interpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public final interpolate(FFF)F
    .locals 1

    .prologue
    .line 33
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method
