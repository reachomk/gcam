.class final Lcom/android/camera/burst/BurstControllerImpl$4;
.super Lcom/google/android/libraries/smartburst/utils/BiFunction;
.source "BurstControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstControllerImpl;->startAnalysis()Lcom/google/android/libraries/smartburst/selection/FrameDropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/utils/BiFunction",
        "<",
        "Lcom/google/android/libraries/smartburst/media/Summary",
        "<",
        "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
        ">;",
        "Lcom/google/android/libraries/smartburst/media/Summary",
        "<",
        "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
        ">;",
        "Lcom/android/camera/burst/BurstControllerImpl$SummaryPair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/BiFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 452
    check-cast p1, Lcom/google/android/libraries/smartburst/media/Summary;

    check-cast p2, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 1457
    new-instance v0, Lcom/android/camera/burst/BurstControllerImpl$SummaryPair;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/burst/BurstControllerImpl$SummaryPair;-><init>(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;)V

    .line 452
    return-object v0
.end method
