.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$31;
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
    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 932
    .line 1941
    const/4 v0, 0x5

    new-array v1, v0, [Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v2, "segmenter"

    .line 1942
    invoke-virtual {p1, v0, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    aput-object v0, v1, v5

    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v2, "segment_classifier"

    .line 1943
    invoke-virtual {p1, v0, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    aput-object v0, v1, v4

    const/4 v2, 0x2

    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v3, "action_merger"

    .line 1944
    invoke-virtual {p1, v0, v3}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    aput-object v0, v1, v2

    const/4 v0, 0x3

    new-instance v2, Lcom/google/android/libraries/smartburst/segmentation/selectors/LabeledSegmentSelector;

    new-array v3, v4, [Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;

    sget-object v4, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;->ACTION:Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lcom/google/android/libraries/smartburst/segmentation/selectors/LabeledSegmentSelector;-><init>([Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;)V

    aput-object v2, v1, v0

    const/4 v2, 0x4

    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v3, "jump_cut"

    .line 1946
    invoke-virtual {p1, v0, v3}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    aput-object v0, v1, v2

    .line 1941
    invoke-static {v1}, Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;->of([Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;)Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;

    move-result-object v0

    .line 932
    return-object v0
.end method
