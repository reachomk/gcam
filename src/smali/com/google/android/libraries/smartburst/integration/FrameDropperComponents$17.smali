.class final Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$17;
.super Ljava/lang/Object;
.source "FrameDropperComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;->configureSimple(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/integration/BurstMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/integration/Instantiator",
        "<",
        "Lcom/google/android/libraries/smartburst/selection/FrameDropper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1369
    new-instance v0, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;

    new-instance v1, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/selection/ScoredFrameDropper;-><init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V

    .line 366
    return-object v0
.end method
