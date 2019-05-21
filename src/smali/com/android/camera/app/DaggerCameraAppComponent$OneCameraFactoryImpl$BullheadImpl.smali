.class final Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;
.super Ljava/lang/Object;
.source "DaggerCameraAppComponent.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BullheadImpl"
.end annotation


# instance fields
.field private aEMeteringRegionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;",
            ">;"
        }
    .end annotation
.end field

.field private aFMeteringRegionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;",
            ">;"
        }
    .end annotation
.end field

.field private adviceFrameRetrievalCommandProvider:Ljavax/inject/Provider;

.field private advicePreviewListenerProvider:Ljavax/inject/Provider;

.field private aeAfActiveScannerProvider:Ljavax/inject/Provider;

.field private afStateResponseListenerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private afStateResponseListenerNexus2016ImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerNexus2016Impl;",
            ">;"
        }
    .end annotation
.end field

.field private autoFlashHdrPlusImageCaptureCommandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private autoFlashIndicatorProvider:Ljavax/inject/Provider;

.field private final autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

.field private bindImageSourceFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private bindOutputImageSourceFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private burstNoFlashCommandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private burstZslCommandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private captureFailureLoggerProvider:Ljavax/inject/Provider;

.field private controlModeSelectorProvider:Ljavax/inject/Provider;

.field private controlSceneModeSelectorProvider:Ljavax/inject/Provider;

.field private defaultZslRingBufferPolicyProvider:Ljavax/inject/Provider;

.field private final faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

.field private flashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

.field private focusMonitorProvider:Ljavax/inject/Provider;

.field private forStreamConfigSetOfAsyncStreamConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private forStreamConfigSetOfSurfaceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation
.end field

.field private frameClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock;",
            ">;"
        }
    .end annotation
.end field

.field private frameRequestProcessorFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;",
            ">;"
        }
    .end annotation
.end field

.field private gcamDngImageWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;",
            ">;"
        }
    .end annotation
.end field

.field private genericOneCameraProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;",
            ">;"
        }
    .end annotation
.end field

.field private hdrPlusBurstTakerProvider:Ljavax/inject/Provider;

.field private hdrPlusImageCaptureCommandProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;",
            ">;"
        }
    .end annotation
.end field

.field private hdrPlusTorchImageCaptureCommandProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;",
            ">;"
        }
    .end annotation
.end field

.field private imageBackendThumbnailerProvider:Ljavax/inject/Provider;

.field private imageCaptureThresholdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/collect/Serialization;",
            ">;"
        }
    .end annotation
.end field

.field private imageFilterImageSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector;",
            ">;"
        }
    .end annotation
.end field

.field private imageRotationCalculatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ImageRotationCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private jpegThumbnailParametersImplProvider:Ljavax/inject/Provider;

.field private final largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

.field private managedImageWriterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private nativeYUV_420_888ImageCopierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/training/MetadataSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private previewCommandProvider:Ljavax/inject/Provider;

.field private provide3AConvergenceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/Convergence3A;",
            ">;"
        }
    .end annotation
.end field

.field private provideAEMeteringRegionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideAFControlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocus;",
            ">;"
        }
    .end annotation
.end field

.field private provideAFHoldSecondsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private provideAFMeteringRegionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideAFModeParameterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideAFModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideAFStateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private provideAdvicePreviewListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideAeLockParameterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideAfRequestTransformerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideAsyncReprocessableImageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private provideAutoFlashHdrPlusDecisionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideAutoFlashHdrPlusNotificationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideCameraStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/SparseArrays;",
            ">;"
        }
    .end annotation
.end field

.field private provideCaptureFrameServerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            ">;"
        }
    .end annotation
.end field

.field private provideCaptureResultFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;",
            ">;"
        }
    .end annotation
.end field

.field private provideCaptureResultVerifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private provideCaptureSessionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideCaptureSessionStartTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/StartTask;",
            ">;"
        }
    .end annotation
.end field

.field private provideCaptureStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideCommandExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideControlModeSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideControlSceneModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideCropRegionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideDataCollectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideDeferredSessionFutureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private provideDeferredViewfinderStreamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private provideDelayedShutdownProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private provideEagerSmartMeteringProcessorProvider:Ljavax/inject/Provider;

.field private provideExposureCompensationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideFaceRequestTransformerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideFaceResponseListenerProvider:Ljavax/inject/Provider;

.field private provideFacesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/Handles;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideFailureLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private provideFirstFrameListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/StartTask;",
            ">;"
        }
    .end annotation
.end field

.field private provideFlashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideFlashIndicatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideFocusMonitorRequestTransformerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideFrameAllocatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            ">;"
        }
    .end annotation
.end field

.field private provideFrameClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private provideFrameSequencerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private provideFrameServerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            ">;"
        }
    .end annotation
.end field

.field private provideFullSizeSurfaceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private provideGcamWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusSession;",
            ">;"
        }
    .end annotation
.end field

.field private provideHdrPlusImageCaptureAvailabilityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideImageCaptureCommandProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageCaptureCommandRequestTransformerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideImageCaptureStateTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageCopierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/training/MetadataSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageReaderProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageSaverProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageSourceProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageSourceProvider3:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;"
        }
    .end annotation
.end field

.field private provideJpegRotationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideJpegThumbnailProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private provideLargeRawStreamConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideLargeSurfaceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private provideLazySmartMeteringProcessorProvider:Ljavax/inject/Provider;

.field private provideLazyViewfinderStreamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private provideLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private provideLuckyShotMetricProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/LuckyShotMetric;",
            ">;"
        }
    .end annotation
.end field

.field private provideMeteringDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideMeteringLoopStarterProvider:Ljavax/inject/Provider;

.field private provideMeteringMetricProvider:Ljavax/inject/Provider;

.field private provideMeteringParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideOneCameraProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;"
        }
    .end annotation
.end field

.field private providePictureTakerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/PictureTaker;",
            ">;"
        }
    .end annotation
.end field

.field private providePreparableImageSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;",
            ">;"
        }
    .end annotation
.end field

.field private providePreparableImageSourceProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;",
            ">;"
        }
    .end annotation
.end field

.field private providePreviewPerformanceSessionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/ViewfinderJankSession;",
            ">;"
        }
    .end annotation
.end field

.field private providePreviewStartTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/StartTask;",
            ">;"
        }
    .end annotation
.end field

.field private provideReadyStateLoggingStartTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/StartTask;",
            ">;"
        }
    .end annotation
.end field

.field private provideReprocessableCaptureSessionCreatorProvider:Ljavax/inject/Provider;

.field private provideReprocessingImageWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;",
            ">;"
        }
    .end annotation
.end field

.field private provideReprocessingJpegSurfaceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private provideReprocessingSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;",
            ">;"
        }
    .end annotation
.end field

.field private provideReprocessingSessionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;",
            ">;"
        }
    .end annotation
.end field

.field private provideRequestTransformerStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideResettingDelayedExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideResponseManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideResponseManagerRequestTransformerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideRootFrameRequestProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/core/FrameRequestProcessor;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideSceneChangeRequestTransformerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideScheduledExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideSharedImageReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;",
            ">;"
        }
    .end annotation
.end field

.field private provideSharedImageReaderProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;",
            ">;"
        }
    .end annotation
.end field

.field private provideSharedImageReaderProvider3:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;",
            ">;"
        }
    .end annotation
.end field

.field private provideSimpleMeteringResponseListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private provideSmartMeteringControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;",
            ">;"
        }
    .end annotation
.end field

.field private provideSmartMeteringManagerProvider:Ljavax/inject/Provider;

.field private provideSmartMeteringStartTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/StartTask;",
            ">;"
        }
    .end annotation
.end field

.field private provideStateTrackingImageCaptureCommandProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/primitives/Floats;",
            ">;"
        }
    .end annotation
.end field

.field private provideStatisticsFaceDetectModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideSurfacePrepareStartTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/StartTask;",
            ">;"
        }
    .end annotation
.end field

.field private provideSurfacePrepareStartTaskProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/StartTask;",
            ">;"
        }
    .end annotation
.end field

.field private provideSurfacePreparerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/SurfacePreparer;",
            ">;"
        }
    .end annotation
.end field

.field private provideSurfaceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private provideSurfaceProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private provideSurfaceProvider3:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private provideThumbnailerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;",
            ">;"
        }
    .end annotation
.end field

.field private provideTorchControlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/TorchSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private provideViewfinderJankLoggerProvider:Ljavax/inject/Provider;

.field private provideViewfinderJankRecorderProvider:Ljavax/inject/Provider;

.field private provideViewfinderMetadataSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;",
            ">;"
        }
    .end annotation
.end field

.field private provideViewfinderResponseListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private provideViewfinderStartupRecorderProvider:Ljavax/inject/Provider;

.field private provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;"
        }
    .end annotation
.end field

.field private provideViewfinderStreamConfigSetProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;"
        }
    .end annotation
.end field

.field private provideWhiteBalanceModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideZoomParameterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rawImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;

.field private final reprocessingImageWriterModule:Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;

.field private final reprocessingJpegImageReaderModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UKJ5E1P6UOR5EDPMIRJ799O6APQ9DLGMEPAICLGM8PBI9LNM8TBCCKTG____:Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;

.field private responseManagerImplProvider:Ljavax/inject/Provider;

.field private restrictedBurstCommandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/primitives/Booleans;",
            ">;"
        }
    .end annotation
.end field

.field private restrictedBurstZslCommandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private setOfListenableFutureOfRequestTransformerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private setOfObservableOfRequestTransformerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private setOfRequestTransformerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private setOfSequentialFrameProcessorProvider:Ljavax/inject/Provider;

.field private setOfShutdownTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;>;"
        }
    .end annotation
.end field

.field private setOfStartTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/StartTask;",
            ">;>;"
        }
    .end annotation
.end field

.field private simpleConvergence3AProvider:Ljavax/inject/Provider;

.field private simpleMeteringResponseListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;",
            ">;"
        }
    .end annotation
.end field

.field private simpleTorchSwitchProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private simultaneousConvergence3AProvider:Ljavax/inject/Provider;

.field private singleFlashCommandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final smartMeteringLoopModule:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

.field private statisticsFaceDetectModeProvider:Ljavax/inject/Provider;

.field private synthetic this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

.field private touchToFocusImplProvider:Ljavax/inject/Provider;

.field private touchToFocusSmartImplProvider:Ljavax/inject/Provider;

.field private tuningDataLoggerProvider:Ljavax/inject/Provider;

.field private twoStageShutdownProvider:Ljavax/inject/Provider;

.field private viewfinderJankLoggerProvider:Ljavax/inject/Provider;

.field private viewfinderJankRecorderProvider:Ljavax/inject/Provider;

.field private viewfinderStartupRecorderProvider:Ljavax/inject/Provider;

.field private zoomedCropRegionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;)V
    .locals 18

    .prologue
    .line 13980
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13981
    invoke-static/range {p2 .. p2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    .line 13982
    invoke-static/range {p3 .. p3}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->rawImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;

    .line 13984
    invoke-static/range {p4 .. p4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->reprocessingImageWriterModule:Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;

    .line 13986
    invoke-static/range {p5 .. p5}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->reprocessingJpegImageReaderModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UKJ5E1P6UOR5EDPMIRJ799O6APQ9DLGMEPAICLGM8PBI9LNM8TBCCKTG____:Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;

    .line 13987
    invoke-static/range {p6 .. p6}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->smartMeteringLoopModule:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    .line 13988
    new-instance v2, Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    invoke-direct {v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    .line 13989
    new-instance v2, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    invoke-direct {v2}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 15997
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 15998
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 16000
    invoke-static {}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideDefaultShutdownTaskSetFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    .line 15999
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 16001
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->setOfShutdownTaskProvider:Ljavax/inject/Provider;

    .line 16006
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->setOfShutdownTaskProvider:Ljavax/inject/Provider;

    .line 16005
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16004
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->twoStageShutdownProvider:Ljavax/inject/Provider;

    .line 16008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->twoStageShutdownProvider:Ljavax/inject/Provider;

    .line 16010
    invoke-static {v2}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideLifetimeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16009
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    .line 16012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->twoStageShutdownProvider:Ljavax/inject/Provider;

    .line 16014
    invoke-static {v2}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideDelayedShutdownFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16013
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    .line 16016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    .line 16021
    invoke-static {}, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCameraCommandExecutorFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16022
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16023
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v7, v7, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16024
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    .line 16018
    invoke-static/range {v2 .. v7}, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16017
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    .line 16027
    invoke-static {}, Lcom/android/camera/one/v2/common/ResponseManagerImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->responseManagerImplProvider:Ljavax/inject/Provider;

    .line 16029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->responseManagerImplProvider:Ljavax/inject/Provider;

    .line 16030
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule_ProvideResponseManagerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    .line 16033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16036
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16037
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 16035
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/photo/flash/AutoFlashIndicator_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16034
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->autoFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 16039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->autoFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 16041
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/photo/flash/FlashModule_ProvideFlashIndicatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16040
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 16044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16045
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$15900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->bindImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 16047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->rawImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->bindImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 16049
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSharedImageReaderFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQIC5RKIRB1CTIL4PB1CHIN4JBFCHQMOP9R9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16048
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    .line 16052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    .line 16054
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvidePreparableImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16053
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->providePreparableImageSourceProvider:Ljavax/inject/Provider;

    .line 16057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->providePreparableImageSourceProvider:Ljavax/inject/Provider;

    .line 16059
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16058
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSourceProvider:Ljavax/inject/Provider;

    .line 16062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSourceProvider:Ljavax/inject/Provider;

    .line 16063
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideImageReaderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    .line 16065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16067
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16066
    invoke-static {v2}, Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->frameRequestProcessorFactoryProvider:Ljavax/inject/Provider;

    .line 16069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16070
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->bindOutputImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 16072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->reprocessingJpegImageReaderModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UKJ5E1P6UOR5EDPMIRJ799O6APQ9DLGMEPAICLGM8PBI9LNM8TBCCKTG____:Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16077
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->bindOutputImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 16074
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQICLO74RR3CLPN6QBECT570PB795MM2PR5A9IM2P35E96MUP3LDHIJMJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16073
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSharedImageReaderProvider2:Ljavax/inject/Provider;

    .line 16080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSharedImageReaderProvider2:Ljavax/inject/Provider;

    .line 16081
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideReprocessingJpegSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReprocessingJpegSurfaceProvider:Ljavax/inject/Provider;

    .line 16084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReprocessingJpegSurfaceProvider:Ljavax/inject/Provider;

    .line 16085
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSurfaceProvider:Ljavax/inject/Provider;

    .line 16088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    .line 16089
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideFullSizeSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFullSizeSurfaceProvider:Ljavax/inject/Provider;

    .line 16092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFullSizeSurfaceProvider:Ljavax/inject/Provider;

    .line 16093
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSurfaceProvider2:Ljavax/inject/Provider;

    .line 16095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16100
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->bindImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 16097
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16096
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSharedImageReaderProvider3:Ljavax/inject/Provider;

    .line 16103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSharedImageReaderProvider3:Ljavax/inject/Provider;

    .line 16104
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideLargeSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLargeSurfaceProvider:Ljavax/inject/Provider;

    .line 16107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLargeSurfaceProvider:Ljavax/inject/Provider;

    .line 16108
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSurfaceProvider3:Ljavax/inject/Provider;

    .line 16110
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 16111
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSurfaceProvider:Ljavax/inject/Provider;

    .line 16112
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSurfaceProvider2:Ljavax/inject/Provider;

    .line 16113
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSurfaceProvider3:Ljavax/inject/Provider;

    .line 16114
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 16115
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->forStreamConfigSetOfSurfaceProvider:Ljavax/inject/Provider;

    .line 16117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16120
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16121
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16200(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16122
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 16119
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideViewfinderStreamConfigFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16118
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 16124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 16125
    invoke-static {v2}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideViewfinderStreamConfigSetFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderStreamConfigSetProvider:Ljavax/inject/Provider;

    .line 16128
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 16129
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderStreamConfigSetProvider:Ljavax/inject/Provider;

    .line 16130
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 16131
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->forStreamConfigSetOfAsyncStreamConfigProvider:Ljavax/inject/Provider;

    .line 16133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->forStreamConfigSetOfSurfaceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->forStreamConfigSetOfAsyncStreamConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLargeSurfaceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFullSizeSurfaceProvider:Ljavax/inject/Provider;

    .line 16134
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLargeRawStreamConfigProvider:Ljavax/inject/Provider;

    .line 16140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16145
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLargeRawStreamConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16147
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16148
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16149
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16150
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v9, v9, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16151
    invoke-static {v9}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v10, v10, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16152
    invoke-static {v10}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v11, v11, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16153
    invoke-static {v11}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v11

    .line 16143
    invoke-static/range {v2 .. v11}, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16141
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReprocessableCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 16155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReprocessableCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 16156
    invoke-static {v2}, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideCaptureSessionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureSessionProvider:Ljavax/inject/Provider;

    .line 16159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->frameRequestProcessorFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureSessionProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16165
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 16161
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16160
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideRootFrameRequestProcessorProvider:Ljavax/inject/Provider;

    .line 16167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideRootFrameRequestProcessorProvider:Ljavax/inject/Provider;

    .line 16169
    invoke-static {v2}, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideFrameServerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16168
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    .line 16172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    .line 16174
    invoke-static {v2}, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideCaptureFrameServerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16173
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    .line 16177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16180
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16181
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16182
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16183
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16184
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v7, v7, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16185
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16186
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 16179
    invoke-static/range {v2 .. v8}, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16178
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->gcamDngImageWriterProvider:Ljavax/inject/Provider;

    .line 16188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16191
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16192
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16193
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16194
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16195
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$18000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v7, v7, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16196
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16197
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$18100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v9, v9, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16198
    invoke-static {v9}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v10, v10, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16199
    invoke-static {v10}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->gcamDngImageWriterProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v13, v13, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16202
    invoke-static {v13}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v13

    .line 16190
    invoke-static/range {v2 .. v13}, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16189
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    .line 16204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16209
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    .line 16206
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusAvailabilityModule_ProvideHdrPlusImageCaptureAvailabilityFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16205
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideHdrPlusImageCaptureAvailabilityProvider:Ljavax/inject/Provider;

    .line 16212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16215
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusSimpleMeteringModule_ProvideMeteringMetricFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16213
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideMeteringMetricProvider:Ljavax/inject/Provider;

    .line 16218
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideCaptureResultFilterFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureResultFilterProvider:Ljavax/inject/Provider;

    .line 16223
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideMeteringMetricProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureResultFilterProvider:Ljavax/inject/Provider;

    .line 16222
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16221
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->simpleMeteringResponseListenerProvider:Ljavax/inject/Provider;

    .line 16227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16231
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16232
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16233
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17200(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFlashIndicatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideHdrPlusImageCaptureAvailabilityProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->simpleMeteringResponseListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16237
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 16230
    invoke-static/range {v2 .. v8}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusSimpleMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16228
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAutoFlashHdrPlusDecisionProvider:Ljavax/inject/Provider;

    .line 16239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->smartMeteringLoopModule:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16247
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16248
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v6

    .line 16242
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideEagerSmartMeteringProcessorFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16240
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideEagerSmartMeteringProcessorProvider:Ljavax/inject/Provider;

    .line 16250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->smartMeteringLoopModule:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16257
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    .line 16253
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideLazySmartMeteringProcessorFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16251
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLazySmartMeteringProcessorProvider:Ljavax/inject/Provider;

    .line 16259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    .line 16262
    invoke-static {}, Lcom/google/android/apps/camera/aaa/AfStateMonitorImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    .line 16261
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFStateMonitorFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16260
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    .line 16266
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    .line 16265
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerImpl_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->afStateResponseListenerImplProvider:Ljavax/inject/Provider;

    .line 16271
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    .line 16270
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerNexus2016Impl_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->afStateResponseListenerNexus2016ImplProvider:Ljavax/inject/Provider;

    .line 16274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16277
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16278
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->afStateResponseListenerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->afStateResponseListenerNexus2016ImplProvider:Ljavax/inject/Provider;

    .line 16275
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAfRequestTransformerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16285
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16286
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16287
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    .line 16283
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideSceneChangeRequestTransformerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSceneChangeRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16289
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/FocusMonitor_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 16291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 16292
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideFocusMonitorRequestTransformerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFocusMonitorRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 16297
    invoke-static {v2}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceResponseListenerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2URB5EHGM8OBKC4NMCOB3CKNKCOB3CL26AT35CDQ6IRRE9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16296
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFaceResponseListenerProvider:Ljavax/inject/Provider;

    .line 16299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFaceResponseListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16302
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 16300
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceRequestTransformerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFaceRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16305
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/v2/common/FrameClock_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ldagger/MembersInjector;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->frameClockProvider:Ljavax/inject/Provider;

    .line 16307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->frameClockProvider:Ljavax/inject/Provider;

    .line 16308
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideFrameClockFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameClockProvider:Ljavax/inject/Provider;

    .line 16310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16312
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16313
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 16311
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->jpegThumbnailParametersImplProvider:Ljavax/inject/Provider;

    .line 16317
    invoke-static {}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->jpegThumbnailParametersImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16319
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 16316
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegThumbnailFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideJpegThumbnailProvider:Ljavax/inject/Provider;

    .line 16321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16323
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16322
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->viewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 16325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->viewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 16326
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideViewfinderJankLoggerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 16332
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideInstrumentationFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    .line 16331
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvidePreviewPerformanceSessionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16330
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->providePreviewPerformanceSessionProvider:Ljavax/inject/Provider;

    .line 16334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->providePreviewPerformanceSessionProvider:Ljavax/inject/Provider;

    .line 16335
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->viewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 16337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->viewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 16338
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideViewfinderJankRecorderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 16341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->providePreviewPerformanceSessionProvider:Ljavax/inject/Provider;

    .line 16342
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/ViewfinderStartupRecorder_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->viewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 16344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->viewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 16345
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideViewfinderStartupRecorderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 16348
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 16349
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 16350
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 16351
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 16352
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 16353
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->setOfSequentialFrameProcessorProvider:Ljavax/inject/Provider;

    .line 16355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->setOfSequentialFrameProcessorProvider:Ljavax/inject/Provider;

    .line 16356
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideFrameSequencerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameSequencerProvider:Ljavax/inject/Provider;

    .line 16361
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    .line 16362
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideUsageStatisticsFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16363
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 16360
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/stats/CaptureFailureLogger_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->captureFailureLoggerProvider:Ljavax/inject/Provider;

    .line 16365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->captureFailureLoggerProvider:Ljavax/inject/Provider;

    .line 16366
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideFailureLoggerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFailureLoggerProvider:Ljavax/inject/Provider;

    .line 16369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16371
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16370
    invoke-static {v2}, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack_ProvideCaptureResultVerifierFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureResultVerifierProvider:Ljavax/inject/Provider;

    .line 16373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureResultFilterProvider:Ljavax/inject/Provider;

    .line 16375
    invoke-static {v2}, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideViewfinderMetadataSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16374
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderMetadataSaverProvider:Ljavax/inject/Provider;

    .line 16378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderMetadataSaverProvider:Ljavax/inject/Provider;

    .line 16379
    invoke-static {v2}, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideViewfinderResponseListenerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderResponseListenerProvider:Ljavax/inject/Provider;

    .line 16382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->simpleMeteringResponseListenerProvider:Ljavax/inject/Provider;

    .line 16385
    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusSimpleMeteringModule_ProvideSimpleMeteringResponseListenerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16383
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSimpleMeteringResponseListenerProvider:Ljavax/inject/Provider;

    .line 16387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSharedImageReaderProvider3:Ljavax/inject/Provider;

    .line 16389
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvidePreparableImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16388
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->providePreparableImageSourceProvider2:Ljavax/inject/Provider;

    .line 16392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->providePreparableImageSourceProvider2:Ljavax/inject/Provider;

    .line 16394
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16393
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSourceProvider2:Ljavax/inject/Provider;

    .line 16397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSourceProvider2:Ljavax/inject/Provider;

    .line 16398
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideImageReaderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageReaderProvider2:Ljavax/inject/Provider;

    .line 16400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16402
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16403
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 16401
    invoke-static {v2, v3}, Lcom/android/camera/util/ImageRotationCalculator_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 16404
    new-instance v2, Ldagger/internal/DelegateFactory;

    invoke-direct {v2}, Ldagger/internal/DelegateFactory;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 16406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16409
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageReaderProvider2:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 16408
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/advice/AdviceFrameRetrievalCommand_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16407
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->adviceFrameRetrievalCommandProvider:Ljavax/inject/Provider;

    .line 16418
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16419
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->adviceFrameRetrievalCommandProvider:Ljavax/inject/Provider;

    .line 16417
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/advice/AdvicePreviewListener_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16416
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->advicePreviewListenerProvider:Ljavax/inject/Provider;

    .line 16423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->advicePreviewListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16427
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16428
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 16425
    invoke-static {v2, v3, v4}, Lcom/android/camera/advice/AdviceModules_OneCameraAdviceModule_ProvideAdvicePreviewListenerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16424
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAdvicePreviewListenerProvider:Ljavax/inject/Provider;

    .line 16430
    const/16 v2, 0xa

    const/4 v3, 0x5

    .line 16431
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16432
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSceneChangeRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16433
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFocusMonitorRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16434
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFaceRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16435
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameClockProvider:Ljavax/inject/Provider;

    .line 16436
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 16437
    invoke-static {}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegQualityFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideJpegThumbnailProvider:Ljavax/inject/Provider;

    .line 16438
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameSequencerProvider:Ljavax/inject/Provider;

    .line 16439
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFailureLoggerProvider:Ljavax/inject/Provider;

    .line 16440
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 16442
    invoke-static {}, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack_ProvidePreviewRequestTransformerFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    .line 16441
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureResultVerifierProvider:Ljavax/inject/Provider;

    .line 16443
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderResponseListenerProvider:Ljavax/inject/Provider;

    .line 16444
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 16445
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideLensShadingMapFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSimpleMeteringResponseListenerProvider:Ljavax/inject/Provider;

    .line 16446
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAdvicePreviewListenerProvider:Ljavax/inject/Provider;

    .line 16447
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 16448
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->setOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 16452
    invoke-static {v2}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideLazyViewfinderStreamFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16451
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLazyViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 16455
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 16456
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLazyViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 16457
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 16458
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->setOfListenableFutureOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16461
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideMeteringParametersFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    .line 16465
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16466
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16800(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16467
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    .line 16464
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->zoomedCropRegionProvider:Ljavax/inject/Provider;

    .line 16469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->zoomedCropRegionProvider:Ljavax/inject/Provider;

    .line 16470
    invoke-static {v2}, Lcom/android/camera/one/v2/common/zoom/ZoomModule_ProvideCropRegionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 16474
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 16473
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AFMeteringRegion_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->aFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 16478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->aFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 16479
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFMeteringRegionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 16483
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 16482
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->aEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 16487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->aEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 16488
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAEMeteringRegionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 16491
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFModeFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    .line 16493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    .line 16494
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFModeParameterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFModeParameterProvider:Ljavax/inject/Provider;

    .line 16496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16498
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16497
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAeLockParameterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAeLockParameterProvider:Ljavax/inject/Provider;

    .line 16502
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16503
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16900(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16504
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16506
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v6

    .line 16501
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/common/ControlModeSelector_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->controlModeSelectorProvider:Ljavax/inject/Provider;

    .line 16508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->controlModeSelectorProvider:Ljavax/inject/Provider;

    .line 16509
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideControlModeSelectorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideControlModeSelectorProvider:Ljavax/inject/Provider;

    .line 16514
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16515
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16900(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16516
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16517
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    .line 16513
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->controlSceneModeSelectorProvider:Ljavax/inject/Provider;

    .line 16519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->controlSceneModeSelectorProvider:Ljavax/inject/Provider;

    .line 16520
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideControlSceneModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideControlSceneModeProvider:Ljavax/inject/Provider;

    .line 16525
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16526
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16527
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16528
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17200(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    .line 16524
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/common/FlashHdrPlusBasedAEMode_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->flashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 16530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->flashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 16531
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideFlashHdrPlusBasedAEModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFlashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 16536
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16537
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 16535
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->statisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 16539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->statisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 16540
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideStatisticsFaceDetectModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideStatisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 16543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16545
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16544
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideExposureCompensationFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideExposureCompensationProvider:Ljavax/inject/Provider;

    .line 16551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16553
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16552
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideWhiteBalanceModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideWhiteBalanceModeProvider:Ljavax/inject/Provider;

    .line 16555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 16556
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegRotationFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideJpegRotationProvider:Ljavax/inject/Provider;

    .line 16559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 16560
    invoke-static {v2}, Lcom/android/camera/one/v2/common/zoom/ZoomModule_ProvideZoomParameterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideZoomParameterProvider:Ljavax/inject/Provider;

    .line 16562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->responseManagerImplProvider:Ljavax/inject/Provider;

    .line 16563
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule_ProvideResponseManagerRequestTransformerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideResponseManagerRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 16568
    invoke-static {v2}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideDeferredViewfinderStreamFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16567
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDeferredViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 16572
    invoke-static {}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideRequestTransformerStateFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideRequestTransformerStateProvider:Ljavax/inject/Provider;

    .line 16574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideRequestTransformerStateProvider:Ljavax/inject/Provider;

    .line 16575
    invoke-static {v2}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideImageCaptureCommandRequestTransformerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageCaptureCommandRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16578
    const/16 v2, 0xe

    const/4 v3, 0x1

    .line 16579
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 16580
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 16581
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFModeParameterProvider:Ljavax/inject/Provider;

    .line 16582
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAeLockParameterProvider:Ljavax/inject/Provider;

    .line 16583
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideControlModeSelectorProvider:Ljavax/inject/Provider;

    .line 16584
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideControlSceneModeProvider:Ljavax/inject/Provider;

    .line 16585
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFlashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 16586
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideStatisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 16587
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideExposureCompensationProvider:Ljavax/inject/Provider;

    .line 16588
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideWhiteBalanceModeProvider:Ljavax/inject/Provider;

    .line 16589
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideJpegRotationProvider:Ljavax/inject/Provider;

    .line 16590
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideZoomParameterProvider:Ljavax/inject/Provider;

    .line 16591
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideResponseManagerRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16592
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDeferredViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 16593
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageCaptureCommandRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16594
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 16595
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->setOfObservableOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    check-cast v2, Ldagger/internal/DelegateFactory;

    .line 16599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->setOfRequestTransformerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->setOfListenableFutureOfRequestTransformerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->setOfObservableOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 16601
    invoke-static {v3, v4, v5}, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule_ProvideDefaultRequestTemplateFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v3

    .line 16600
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 16605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 16608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->smartMeteringLoopModule:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureResultFilterProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->frameClockProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16618
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    .line 16611
    invoke-static/range {v2 .. v9}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16609
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideMeteringLoopStarterProvider:Ljavax/inject/Provider;

    .line 16621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->smartMeteringLoopModule:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideEagerSmartMeteringProcessorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLazySmartMeteringProcessorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideMeteringLoopStarterProvider:Ljavax/inject/Provider;

    .line 16624
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideSmartMeteringManagerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16622
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSmartMeteringManagerProvider:Ljavax/inject/Provider;

    .line 16631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSmartMeteringManagerProvider:Ljavax/inject/Provider;

    .line 16633
    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideSmartMeteringControllerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSmartMeteringControllerProvider:Ljavax/inject/Provider;

    .line 16635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16637
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16636
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/SimpleConvergence3A_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->simpleConvergence3AProvider:Ljavax/inject/Provider;

    .line 16639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16641
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16640
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/SimultaneousConvergence3A_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->simultaneousConvergence3AProvider:Ljavax/inject/Provider;

    .line 16643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16645
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->simpleConvergence3AProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->simultaneousConvergence3AProvider:Ljavax/inject/Provider;

    .line 16644
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_Provide3AConvergenceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    .line 16649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16651
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16652
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16654
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16655
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 16650
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->hdrPlusBurstTakerProvider:Ljavax/inject/Provider;

    .line 16657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16660
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16661
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16662
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSmartMeteringControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->hdrPlusBurstTakerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v12, v12, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16670
    invoke-static {v12}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderMetadataSaverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16672
    invoke-static {v14}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideHdrPlusImageCaptureAvailabilityProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    move-object/from16 v16, v0

    .line 16674
    invoke-static/range {v16 .. v16}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$18300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v16

    .line 16659
    invoke-static/range {v2 .. v16}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16658
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->hdrPlusImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 16676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16678
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16677
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->simpleTorchSwitchProvider:Ljavax/inject/Provider;

    .line 16680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->simpleTorchSwitchProvider:Ljavax/inject/Provider;

    .line 16681
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideTorchControlFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideTorchControlProvider:Ljavax/inject/Provider;

    .line 16683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16686
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16687
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16688
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSmartMeteringControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->hdrPlusBurstTakerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v12, v12, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16696
    invoke-static {v12}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideViewfinderMetadataSaverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideTorchControlProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16699
    invoke-static {v15}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideHdrPlusImageCaptureAvailabilityProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    move-object/from16 v17, v0

    .line 16701
    invoke-static/range {v17 .. v17}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$18300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v17

    .line 16685
    invoke-static/range {v2 .. v17}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16684
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->hdrPlusTorchImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 16703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16705
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAutoFlashHdrPlusDecisionProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->hdrPlusImageCaptureCommandProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->hdrPlusTorchImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 16704
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->autoFlashHdrPlusImageCaptureCommandFactoryProvider:Ljavax/inject/Provider;

    .line 16710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSourceProvider2:Ljavax/inject/Provider;

    .line 16712
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/FrameAllocatorModules_LargeFrameAllocatorModule_ProvideFrameAllocatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16711
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    .line 16715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideRootFrameRequestProcessorProvider:Ljavax/inject/Provider;

    .line 16716
    invoke-static {v2}, Lcom/android/camera/one/v2/core/ReprocessibleFrameServerModule_ProvideReprocessingSessionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReprocessingSessionProvider:Ljavax/inject/Provider;

    .line 16719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16721
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16720
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/util/NativeYUV_420_888ImageCopier_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->nativeYUV_420_888ImageCopierProvider:Ljavax/inject/Provider;

    .line 16723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->nativeYUV_420_888ImageCopierProvider:Ljavax/inject/Provider;

    .line 16724
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/util/UtilModule_ProvideImageCopierFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageCopierProvider:Ljavax/inject/Provider;

    .line 16726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16728
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16730
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageCopierProvider:Ljavax/inject/Provider;

    .line 16727
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->managedImageWriterFactoryProvider:Ljavax/inject/Provider;

    .line 16733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->reprocessingImageWriterModule:Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureSessionProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->managedImageWriterFactoryProvider:Ljavax/inject/Provider;

    .line 16735
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule_ProvideReprocessingImageWriterFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQICLO74RR3CLPN6QBECT4MQOB7CLBN4QBKCLP4QRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16734
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReprocessingImageWriterProvider:Ljavax/inject/Provider;

    .line 16740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSharedImageReaderProvider2:Ljavax/inject/Provider;

    .line 16741
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSourceProvider3:Ljavax/inject/Provider;

    .line 16744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16748
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReprocessingSessionProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReprocessingImageWriterProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSourceProvider3:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v7, v7, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16752
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16753
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 16746
    invoke-static/range {v2 .. v8}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16745
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReprocessingSaverProvider:Ljavax/inject/Provider;

    .line 16755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReprocessingSaverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16759
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 16757
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_Reprocessing_ProvideAsyncReprocessableImageSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16756
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAsyncReprocessableImageSaverProvider:Ljavax/inject/Provider;

    .line 16763
    invoke-static {}, Lcom/android/camera/processing/imagebackend/MostRecentImageFilter_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    .line 16762
    invoke-static {v2}, Lcom/android/camera/processing/imagebackend/ImageFilterModules_MostRecentImageFilterModule_ProvideImageFilterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageFilterProvider:Ljavax/inject/Provider;

    .line 16765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageFilterProvider:Ljavax/inject/Provider;

    .line 16766
    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->imageFilterImageSelectorProvider:Ljavax/inject/Provider;

    .line 16768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16770
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16769
    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->tuningDataLoggerProvider:Ljavax/inject/Provider;

    .line 16775
    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/tuning/ProductionNoopImageWriter_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->tuningDataLoggerProvider:Ljavax/inject/Provider;

    .line 16774
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NullTuningModule_ProvideDataCollectorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16773
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDataCollectorProvider:Ljavax/inject/Provider;

    .line 16777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->imageFilterImageSelectorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDataCollectorProvider:Ljavax/inject/Provider;

    .line 16778
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule_ProvideImageSelectorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSelectorProvider:Ljavax/inject/Provider;

    .line 16781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16783
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16784
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 16782
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->imageBackendThumbnailerProvider:Ljavax/inject/Provider;

    .line 16786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->imageBackendThumbnailerProvider:Ljavax/inject/Provider;

    .line 16787
    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ThumbnailModule_ProvideThumbnailerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideThumbnailerProvider:Ljavax/inject/Provider;

    .line 16789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16792
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16793
    invoke-static {}, Lcom/android/camera/exif/ExifInterface_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAsyncReprocessableImageSaverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSelectorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideThumbnailerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDataCollectorProvider:Ljavax/inject/Provider;

    .line 16799
    invoke-static {}, Lcom/google/android/apps/camera/util/time/IntervalClock_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v10, v10, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16800
    invoke-static {v10}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v11, v11, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16801
    invoke-static {v11}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v11

    .line 16791
    invoke-static/range {v2 .. v11}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_Reprocessing_ProvideImageSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16790
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    .line 16804
    invoke-static {}, Lcom/android/camera/one/v2/photo/ImageCaptureThreshold_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    .line 16806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16808
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16809
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    .line 16807
    invoke-static/range {v2 .. v9}, Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->singleFlashCommandFactoryProvider:Ljavax/inject/Provider;

    .line 16817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16819
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    .line 16818
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->defaultZslRingBufferPolicyProvider:Ljavax/inject/Provider;

    .line 16822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16824
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16823
    invoke-static {v2}, Lcom/android/camera/processing/imagebackend/LuckyShotMetrics_GcamSharpness_ProvideLuckyShotMetricFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLuckyShotMetricProvider:Ljavax/inject/Provider;

    .line 16826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16829
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16831
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16832
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDataCollectorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLuckyShotMetricProvider:Ljavax/inject/Provider;

    .line 16828
    invoke-static/range {v2 .. v8}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16827
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSaverProvider2:Ljavax/inject/Provider;

    .line 16837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16839
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16840
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSaverProvider2:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->defaultZslRingBufferPolicyProvider:Ljavax/inject/Provider;

    .line 16838
    invoke-static/range {v2 .. v8}, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->burstZslCommandFactoryProvider:Ljavax/inject/Provider;

    .line 16847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->defaultZslRingBufferPolicyProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->burstZslCommandFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16851
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    .line 16848
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->restrictedBurstZslCommandFactoryProvider:Ljavax/inject/Provider;

    .line 16853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16855
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16856
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageSaverProvider2:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    .line 16854
    invoke-static/range {v2 .. v9}, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->burstNoFlashCommandFactoryProvider:Ljavax/inject/Provider;

    .line 16864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->burstNoFlashCommandFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16867
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 16865
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->restrictedBurstCommandFactoryProvider:Ljavax/inject/Provider;

    .line 16869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->autoFlashHdrPlusImageCaptureCommandFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->singleFlashCommandFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->restrictedBurstZslCommandFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->restrictedBurstCommandFactoryProvider:Ljavax/inject/Provider;

    .line 16872
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideStateTrackingImageCaptureCommandFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16870
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideStateTrackingImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 16878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideStateTrackingImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 16879
    invoke-static {v2}, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideImageCaptureCommandFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 16882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16887
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageCaptureCommandProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideRequestTransformerStateProvider:Ljavax/inject/Provider;

    .line 16884
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvidePictureTakerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16883
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->providePictureTakerProvider:Ljavax/inject/Provider;

    .line 16891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 16895
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/ActiveScanRequestBuilder_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 16892
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->aeAfActiveScannerProvider:Ljavax/inject/Provider;

    .line 16898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    .line 16900
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideScheduledExecutorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16899
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideScheduledExecutorProvider:Ljavax/inject/Provider;

    .line 16903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16906
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16907
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    .line 16904
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFHoldSecondsFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFHoldSecondsProvider:Ljavax/inject/Provider;

    .line 16909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideScheduledExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFHoldSecondsProvider:Ljavax/inject/Provider;

    .line 16910
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideResettingDelayedExecutorFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideResettingDelayedExecutorProvider:Ljavax/inject/Provider;

    .line 16913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16917
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    .line 16918
    invoke-static {}, Lcom/android/camera/one/Settings3A_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->aeAfActiveScannerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideResettingDelayedExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v10, v10, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16923
    invoke-static {v10}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v11, v11, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16924
    invoke-static {v11}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v11

    .line 16914
    invoke-static/range {v2 .. v11}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->touchToFocusImplProvider:Ljavax/inject/Provider;

    .line 16926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideResettingDelayedExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16930
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    .line 16933
    invoke-static {}, Lcom/android/camera/one/Settings3A_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->aeAfActiveScannerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v9, v9, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16935
    invoke-static {v9}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v10, v10, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16936
    invoke-static {v10}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    .line 16927
    invoke-static/range {v2 .. v10}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->touchToFocusSmartImplProvider:Ljavax/inject/Provider;

    .line 16938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 16942
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 16943
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->touchToFocusImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->touchToFocusSmartImplProvider:Ljavax/inject/Provider;

    .line 16940
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16939
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFControlProvider:Ljavax/inject/Provider;

    .line 16947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAutoFlashHdrPlusDecisionProvider:Ljavax/inject/Provider;

    .line 16949
    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusSimpleMeteringModule_ProvideAutoFlashHdrPlusNotificationFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAutoFlashHdrPlusNotificationProvider:Ljavax/inject/Provider;

    .line 16951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideStateTrackingImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 16954
    invoke-static {v2}, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideImageCaptureStateTrackerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16952
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageCaptureStateTrackerProvider:Ljavax/inject/Provider;

    .line 16956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageCaptureStateTrackerProvider:Ljavax/inject/Provider;

    .line 16958
    invoke-static {v2}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideCaptureStateFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 16957
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureStateProvider:Ljavax/inject/Provider;

    .line 16961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    .line 16962
    invoke-static {v2}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule_ProvideFirstFrameListenerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFirstFrameListenerProvider:Ljavax/inject/Provider;

    .line 16965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 16966
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/preview/PreviewCommand_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->previewCommandProvider:Ljavax/inject/Provider;

    .line 16969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReprocessableCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 16970
    invoke-static {v2}, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideDeferredSessionFutureFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDeferredSessionFutureProvider:Ljavax/inject/Provider;

    .line 16973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->previewCommandProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideDeferredSessionFutureProvider:Ljavax/inject/Provider;

    .line 16974
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->providePreviewStartTaskProvider:Ljavax/inject/Provider;

    .line 16981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReprocessableCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 16982
    invoke-static {v2}, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideCaptureSessionStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureSessionStartTaskProvider:Ljavax/inject/Provider;

    .line 16985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReprocessableCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 16986
    invoke-static {v2}, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideSurfacePreparerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSurfacePreparerProvider:Ljavax/inject/Provider;

    .line 16989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->rawImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSurfacePreparerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->providePreparableImageSourceProvider:Ljavax/inject/Provider;

    .line 16990
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSurfacePrepareStartTaskFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQIC5RKIRB1CTIL4PB1CHIN4JBFCHQMOP9R9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSurfacePrepareStartTaskProvider:Ljavax/inject/Provider;

    .line 16996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSurfacePreparerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSharedImageReaderProvider3:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->providePreparableImageSourceProvider2:Ljavax/inject/Provider;

    .line 16997
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSurfacePrepareStartTaskFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSurfacePrepareStartTaskProvider2:Ljavax/inject/Provider;

    .line 17003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 17006
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 17005
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideReadyStateLoggingStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 17004
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReadyStateLoggingStartTaskProvider:Ljavax/inject/Provider;

    .line 17010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSmartMeteringManagerProvider:Ljavax/inject/Provider;

    .line 17012
    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideSmartMeteringStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSmartMeteringStartTaskProvider:Ljavax/inject/Provider;

    .line 17014
    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 17015
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFirstFrameListenerProvider:Ljavax/inject/Provider;

    .line 17016
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->providePreviewStartTaskProvider:Ljavax/inject/Provider;

    .line 17017
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureSessionStartTaskProvider:Ljavax/inject/Provider;

    .line 17018
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSurfacePrepareStartTaskProvider:Ljavax/inject/Provider;

    .line 17019
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSurfacePrepareStartTaskProvider2:Ljavax/inject/Provider;

    .line 17020
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideReadyStateLoggingStartTaskProvider:Ljavax/inject/Provider;

    .line 17021
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideSmartMeteringStartTaskProvider:Ljavax/inject/Provider;

    .line 17022
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 17023
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->setOfStartTaskProvider:Ljavax/inject/Provider;

    .line 17025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->setOfStartTaskProvider:Ljavax/inject/Provider;

    .line 17027
    invoke-static {v2}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideCameraStarterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 17026
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCameraStarterProvider:Ljavax/inject/Provider;

    .line 17029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 17030
    invoke-static {v2}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFacesFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2URB5EHGM8OBKC4NMCOB3CKNKCOB3CL26AT35CDQ6IRRE9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFacesProvider:Ljavax/inject/Provider;

    .line 17032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->simpleMeteringResponseListenerProvider:Ljavax/inject/Provider;

    .line 17034
    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusSimpleMeteringModule_ProvideMeteringDataFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 17033
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideMeteringDataProvider:Ljavax/inject/Provider;

    .line 17037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 17040
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->providePictureTakerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 17042
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFControlProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 17044
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAutoFlashHdrPlusNotificationProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCaptureStateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideCameraStarterProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFacesProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideMeteringDataProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 17038
    invoke-static/range {v2 .. v14}, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->genericOneCameraProvider:Ljavax/inject/Provider;

    .line 17053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->genericOneCameraProvider:Ljavax/inject/Provider;

    .line 17055
    invoke-static {v2}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule_ProvideOneCameraFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 17054
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideOneCameraProvider:Ljavax/inject/Provider;

    .line 13992
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;B)V
    .locals 0

    .prologue
    .line 13558
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;)V

    return-void
.end method


# virtual methods
.method public final oneCamera()Lcom/android/camera/one/OneCamera;
    .locals 1

    .prologue
    .line 15060
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;->provideOneCameraProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera;

    return-object v0
.end method
