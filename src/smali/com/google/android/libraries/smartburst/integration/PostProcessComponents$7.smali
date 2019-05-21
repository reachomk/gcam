.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$7;
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
        "Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 524
    .line 1527
    const-class v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1527
    check-cast v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 1528
    new-instance v1, Lcom/google/android/libraries/smartburst/segmentation/classifiers/CompositeSegmentClassifier;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/segmentation/classifiers/CompositeSegmentClassifier;-><init>()V

    .line 1530
    new-instance v2, Lcom/google/android/libraries/smartburst/segmentation/segmenters/CachedResegmenter;

    new-instance v3, Lcom/google/android/libraries/smartburst/segmentation/classifiers/ActionSegmentClassifier;

    invoke-direct {v3, v0}, Lcom/google/android/libraries/smartburst/segmentation/classifiers/ActionSegmentClassifier;-><init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    .line 1531
    invoke-virtual {v1, v3}, Lcom/google/android/libraries/smartburst/segmentation/classifiers/CompositeSegmentClassifier;->addClassifier(Lcom/google/android/libraries/smartburst/segmentation/SegmentClassifier;)Lcom/google/android/libraries/smartburst/segmentation/classifiers/CompositeSegmentClassifier;

    move-result-object v1

    new-instance v3, Lcom/google/android/libraries/smartburst/segmentation/classifiers/CameraPanningSegmentClassifier;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v3, v0, v4}, Lcom/google/android/libraries/smartburst/segmentation/classifiers/CameraPanningSegmentClassifier;-><init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;F)V

    .line 1532
    invoke-virtual {v1, v3}, Lcom/google/android/libraries/smartburst/segmentation/classifiers/CompositeSegmentClassifier;->addClassifier(Lcom/google/android/libraries/smartburst/segmentation/SegmentClassifier;)Lcom/google/android/libraries/smartburst/segmentation/classifiers/CompositeSegmentClassifier;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/libraries/smartburst/segmentation/segmenters/CachedResegmenter;-><init>(Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;)V

    .line 524
    return-object v2
.end method
