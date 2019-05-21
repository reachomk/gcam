.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$72;
.super Ljava/lang/Object;
.source "PostProcessComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;->configureCommon(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/util/concurrent/Executor;I)V
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
        "Lcom/google/android/libraries/smartburst/artifacts/SummaryStackGenerator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1639
    .line 2642
    new-instance v1, Lcom/google/android/libraries/smartburst/artifacts/SummaryStackGenerator;

    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v2, "post_proc_quality_metric"

    .line 2643
    invoke-virtual {p1, v0, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/artifacts/SummaryStackGenerator;-><init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V

    .line 1639
    return-object v1
.end method
