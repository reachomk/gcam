.class public final Lcom/google/android/libraries/smartburst/utils/MathUtils$SigmoidParams;
.super Ljava/lang/Object;
.source "MathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/utils/MathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigmoidParams"
.end annotation


# instance fields
.field public final offset:F

.field public final rate:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/android/libraries/smartburst/utils/MathUtils$SigmoidParams;->rate:F

    .line 34
    iput p2, p0, Lcom/google/android/libraries/smartburst/utils/MathUtils$SigmoidParams;->offset:F

    .line 35
    return-void
.end method
