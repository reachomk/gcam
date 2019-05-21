.class public Lcom/google/android/libraries/smartburst/integration/SmartBurstComponents;
.super Ljava/lang/Object;
.source "SmartBurstComponents.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;"
    }
.end annotation


# instance fields
.field private final policies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;)V
    .locals 1

    .prologue
    .line 15040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15041
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/integration/SmartBurstComponents;->policies:Ljava/util/List;

    .line 15042
    return-void
.end method

.method public static configureFactoryForPostProcessing(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Landroid/content/Context;Lcom/google/android/libraries/smartburst/integration/BurstMode;[Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)V
    .locals 3

    .prologue
    const/16 v1, 0x140

    const/16 v2, 0x8

    .line 91
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/integration/BurstMode;->doesSmartSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;->configureAUC$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMIRJKCLJN4OBKD5NMSBQ3DTMN0RRECLN78HJ1CDQ6USJP7D662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7CKLC___(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)V

    .line 2517
    invoke-static {p0, p5, p4, v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;->configureCommon(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/util/concurrent/Executor;I)V

    .line 2520
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->disallowOverrides()V

    .line 2523
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "segment_classifier"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$7;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$7;-><init>()V

    .line 2524
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2538
    const-class v0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ImageFeatureExtractor;

    .line 4263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 2538
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$8;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$8;-><init>()V

    .line 2539
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2552
    const-class v0, Lcom/google/android/libraries/smartburst/metadata/ImageMetadataExtractor;

    const-string v1, "parallel_metadata_extractor"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$9;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$9;-><init>()V

    .line 2553
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2565
    const-class v0, Lcom/google/android/libraries/smartburst/metadata/ImageMetadataExtractor;

    const-string v1, "serial_metadata_extractor"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$10;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$10;-><init>(Landroid/content/Context;)V

    .line 2566
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2577
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;

    const-string v1, "summary_collage_frameset_selector"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$11;

    invoke-direct {v1, v2}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$11;-><init>(I)V

    .line 2578
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2601
    const-class v0, [Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;

    .line 5263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 2601
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$12;

    invoke-direct {v1, p3}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$12;-><init>([Ljava/lang/String;)V

    .line 2602
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2619
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "action_burst_segmenter"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$13;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$13;-><init>()V

    .line 2620
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2634
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    const-string v1, "action_collage_artifact_renderer"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$14;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$14;-><init>()V

    .line 2635
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2649
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;

    const-string v1, "Collage_Action"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$15;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$15;-><init>()V

    .line 2650
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2661
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "Collage_Action"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$16;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$16;-><init>()V

    .line 2662
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2692
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    const-string v1, "camera_pan_artifact_renderer"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$17;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$17;-><init>()V

    .line 2693
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2707
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;

    const-string v1, "Collage_CameraPan"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$18;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$18;-><init>()V

    .line 2708
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2719
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "Collage_CameraPan"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$19;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$19;-><init>()V

    .line 2720
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2757
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    const-string v1, "summary_collage_artifact_renderer"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$20;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$20;-><init>()V

    .line 2758
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2772
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;

    const-string v1, "Collage_Summary"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$21;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$21;-><init>()V

    .line 2773
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2784
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "Collage_Summary"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$22;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$22;-><init>()V

    .line 2785
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2815
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "post_proc_quality_metric"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$23;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$23;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2828
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "facemaximumeyeopen"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$24;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$24;-><init>()V

    .line 2829
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2844
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "faceaverageeyeopen"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$25;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$25;-><init>()V

    .line 2845
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2860
    const-class v0, Lcom/google/android/libraries/smartburst/similarity/FeatureRowDistanceMetric;

    const-string v1, "chroma_histogram_feature_row_metric"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$26;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$26;-><init>()V

    .line 2861
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2877
    const-class v0, Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;

    const-string v1, "chroma_histogram_frame_distance_metric"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$27;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$27;-><init>()V

    .line 2878
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2891
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    const-string v1, "action_gif_artifact_renderer"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$28;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$28;-><init>()V

    .line 2892
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2903
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;

    const-string v1, "GIF_Action"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$29;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$29;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2914
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "GIF_Action"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$30;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$30;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2931
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "continuous_action"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$31;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$31;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2951
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;

    const-string v1, "GIF_Summary"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$32;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$32;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2962
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "GIF_Summary"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$33;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$33;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2983
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    const-string v1, "summary_gif_artifact_renderer"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$34;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$34;-><init>()V

    .line 2984
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 2995
    const-class v0, Ljava/nio/ByteBuffer;

    const-string v1, "dither_samples"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$35;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$35;-><init>(Landroid/content/Context;)V

    .line 2996
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3004
    const-class v0, Ljava/nio/ByteBuffer;

    const-string v1, "skin_samples"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$36;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$36;-><init>(Landroid/content/Context;)V

    .line 3005
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3013
    const-class v0, Ljava/nio/ByteBuffer;

    const-string v1, "landmark_extrapolator_models"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$37;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$37;-><init>(Landroid/content/Context;)V

    .line 3014
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3022
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/gifutils/Quantizer;

    .line 6263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 3022
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$38;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$38;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3031
    const-class v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;

    .line 7263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 3031
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$39;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$39;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3045
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    const-string v1, "photobooth_artifact_renderer"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$40;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$40;-><init>()V

    .line 3046
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3059
    const-class v0, [Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const-string v1, "cropping_layouts"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$41;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$41;-><init>()V

    .line 3060
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3067
    const-class v0, [Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const-string v1, "noncropping_layouts"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$42;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$42;-><init>()V

    .line 3068
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3075
    const-class v0, [Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const-string v1, "combined_layouts"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$43;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$43;-><init>()V

    .line 3076
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3087
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;

    const-string v1, "Collage_PhotoBooth"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$44;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$44;-><init>()V

    .line 3088
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3098
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    const-string v1, "all_smiles_artifact_render"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$45;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$45;-><init>()V

    .line 3099
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3112
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;

    const-string v1, "AllSmiles"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$46;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$46;-><init>()V

    .line 3113
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3124
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "Collage_PhotoBooth"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$47;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$47;-><init>()V

    .line 3125
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3152
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "AllSmiles"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$48;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$48;-><init>()V

    .line 3153
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3207
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "face_detector"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$49;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$49;-><init>()V

    .line 3208
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3216
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;

    const-string v1, "Video_VFR"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$50;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$50;-><init>()V

    .line 3217
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3227
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "Video_VFR"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$51;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$51;-><init>()V

    .line 3228
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3247
    const-class v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    const-string v1, "VFR_video_artifact_render"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$52;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$52;-><init>(Landroid/content/Context;)V

    .line 3248
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3257
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;

    const-string v1, "panning_collage_frameset_selector"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$53;

    invoke-direct {v1, v2}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$53;-><init>(I)V

    .line 3258
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3283
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "jump_cut"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$54;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$54;-><init>()V

    .line 3284
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3367
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "action_merger"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$55;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$55;-><init>()V

    .line 3368
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3377
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "best_frame_quality_metric"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$56;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$56;-><init>()V

    .line 3378
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3385
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "image_sharpness_filter"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$57;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$57;-><init>()V

    .line 3386
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3408
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "face_quality_filter"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$58;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$58;-><init>()V

    .line 3409
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3435
    const-class v0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactFilter;

    .line 8263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 3435
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$59;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$59;-><init>()V

    .line 3436
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3443
    const-class v0, Lcom/google/android/libraries/smartburst/postprocessing/FrameSegmentDistanceMetric;

    .line 9263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 3443
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$60;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$60;-><init>()V

    .line 3444
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3454
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "segmenter"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$61;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$61;-><init>()V

    .line 3455
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3468
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "panning_content_value"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$62;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$62;-><init>()V

    .line 3469
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3492
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "summary_content_value"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$63;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$63;-><init>()V

    .line 3493
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3514
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "time_gap_score"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$64;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$64;-><init>()V

    .line 3515
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3523
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "color_diversity"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$65;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$65;-><init>()V

    .line 3524
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3555
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "video_presentation_time"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$66;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$66;-><init>()V

    .line 3556
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 3567
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->allowOverrides()V

    .line 101
    :goto_0
    return-void

    .line 9448
    :cond_0
    invoke-static {p0, p5, p4, v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;->configureCommon(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/util/concurrent/Executor;I)V

    .line 9451
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->disallowOverrides()V

    .line 9454
    const-class v0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ImageFeatureExtractor;

    .line 10263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 9454
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$1;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 9461
    const-class v0, Lcom/google/android/libraries/smartburst/metadata/ImageMetadataExtractor;

    const-string v1, "parallel_metadata_extractor"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$2;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 9470
    const-class v0, Lcom/google/android/libraries/smartburst/metadata/ImageMetadataExtractor;

    const-string v1, "serial_metadata_extractor"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$3;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 9481
    const-class v0, [Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;

    .line 11263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 9481
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$4;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 9490
    const-class v0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactFilter;

    .line 12263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 9490
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$5;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 9498
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "post_proc_quality_metric"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$6;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$6;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 9507
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->allowOverrides()V

    goto :goto_0
.end method

.method public static configureFactoryWithAnalysisResults(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/media/Summary;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/integration/ComponentFactory;",
            "Lcom/google/android/libraries/smartburst/buffers/FeatureTable;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    const-class v0, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 13263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/SmartBurstComponents$1;

    invoke-direct {v1, p2}, Lcom/google/android/libraries/smartburst/integration/SmartBurstComponents$1;-><init>(Lcom/google/android/libraries/smartburst/media/Summary;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 156
    const-class v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 14263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/SmartBurstComponents$2;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/integration/SmartBurstComponents$2;-><init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 162
    return-void
.end method


# virtual methods
.method public discardFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 15046
    .line 15047
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/SmartBurstComponents;->policies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;

    .line 15049
    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;->discardFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 15050
    goto :goto_0

    :cond_1
    move v0, v2

    .line 15049
    goto :goto_1

    .line 15051
    :cond_2
    return v1
.end method
