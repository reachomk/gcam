.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$27;
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
        "Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 878
    .line 1881
    const-class v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1881
    check-cast v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 1883
    new-instance v2, Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;

    new-instance v3, Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric;

    const-class v1, Lcom/google/android/libraries/smartburst/similarity/FeatureRowDistanceMetric;

    const-string v4, "chroma_histogram_feature_row_metric"

    .line 1884
    invoke-virtual {p1, v1, v4}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/smartburst/similarity/FeatureRowDistanceMetric;

    const/16 v4, 0x64

    const/4 v5, 0x1

    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric;-><init>(Lcom/google/android/libraries/smartburst/similarity/FeatureRowDistanceMetric;IZ)V

    invoke-direct {v2, v3, v0}, Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;-><init>(Lcom/google/android/libraries/smartburst/similarity/FeatureRowDistanceMetric;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    .line 878
    return-object v2
.end method
