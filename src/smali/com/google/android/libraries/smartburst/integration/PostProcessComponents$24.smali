.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$24;
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
        "Lcom/google/android/libraries/smartburst/scoring/FrameScorer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 829
    .line 1832
    const-class v0, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1832
    check-cast v0, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 1833
    new-instance v1, Lcom/google/android/libraries/smartburst/scoring/MetadataFrameScorer;

    sget-object v2, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_MAXIMUM_LEFT_EYE_OPEN_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    invoke-direct {v1, v0, v2, v4}, Lcom/google/android/libraries/smartburst/scoring/MetadataFrameScorer;-><init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;Lcom/google/android/libraries/smartburst/storage/Metadata$Key;F)V

    .line 1835
    new-instance v2, Lcom/google/android/libraries/smartburst/scoring/MetadataFrameScorer;

    sget-object v3, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_MAXIMUM_RIGHT_EYE_OPEN_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/libraries/smartburst/scoring/MetadataFrameScorer;-><init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;Lcom/google/android/libraries/smartburst/storage/Metadata$Key;F)V

    .line 2160
    new-instance v0, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;-><init>()V

    .line 1838
    invoke-virtual {v0, v1, v5}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addScorer(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v0

    .line 1839
    invoke-virtual {v0, v2, v5}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addScorer(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v0

    .line 1840
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->build()Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer;

    move-result-object v0

    .line 829
    return-object v0
.end method
