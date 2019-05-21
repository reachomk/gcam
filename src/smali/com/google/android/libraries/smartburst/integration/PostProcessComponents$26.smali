.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$26;
.super Ljava/lang/Object;
.source "PostProcessComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;
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
        "Lcom/google/android/libraries/smartburst/similarity/FeatureRowDistanceMetric;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1864
    new-instance v0, Lcom/google/android/libraries/smartburst/similarity/LinearWeightedFeatureDistanceMetric$Builder;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/similarity/LinearWeightedFeatureDistanceMetric$Builder;-><init>()V

    .line 1866
    sget-object v1, Lcom/google/android/libraries/smartburst/utils/FeatureType;->HUE_SAT_HISTOGRAM:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    new-instance v2, Lcom/google/android/libraries/smartburst/similarity/NormalizedAbsoluteDistanceMetric;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/similarity/NormalizedAbsoluteDistanceMetric;-><init>()V

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/similarity/LinearWeightedFeatureDistanceMetric$Builder;->addWeightedFeature(Lcom/google/android/libraries/smartburst/utils/FeatureType;Lcom/google/android/libraries/smartburst/similarity/FeatureDistanceMetric;F)V

    .line 1869
    sget-object v1, Lcom/google/android/libraries/smartburst/utils/FeatureType;->VALUE_HISTOGRAM:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    new-instance v2, Lcom/google/android/libraries/smartburst/similarity/NormalizedAbsoluteDistanceMetric;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/similarity/NormalizedAbsoluteDistanceMetric;-><init>()V

    const v3, 0x3e4ccccc    # 0.19999999f

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/similarity/LinearWeightedFeatureDistanceMetric$Builder;->addWeightedFeature(Lcom/google/android/libraries/smartburst/utils/FeatureType;Lcom/google/android/libraries/smartburst/similarity/FeatureDistanceMetric;F)V

    .line 1872
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/similarity/LinearWeightedFeatureDistanceMetric$Builder;->build()Lcom/google/android/libraries/smartburst/similarity/LinearWeightedFeatureDistanceMetric;

    move-result-object v0

    .line 861
    return-object v0
.end method
