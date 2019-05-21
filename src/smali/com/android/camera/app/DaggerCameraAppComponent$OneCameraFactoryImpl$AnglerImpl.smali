.class final Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;
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
    name = "AnglerImpl"
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

.field private autoFlashHdrPlusGcamMeteringProcessorProvider:Ljavax/inject/Provider;

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

.field private imageBackendBasedBurstProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;",
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

.field private provideBurstCaptureCommandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/FilmstripDataModule;",
            ">;"
        }
    .end annotation
.end field

.field private provideBurstDeregistrationShutdownTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;"
        }
    .end annotation
.end field

.field private provideBurstProcessingParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusModule;",
            ">;"
        }
    .end annotation
.end field

.field private provideBurstRegistrationStartTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/StartTask;",
            ">;"
        }
    .end annotation
.end field

.field private provideBurstReprocessingImageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            ">;"
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

.field private provideCaptureSessionSurfaceProvider:Ljavax/inject/Provider;
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

.field private provideFrameSaverFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryModule;",
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

.field private provideGcamAeResultsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideGcamAutoHdrPlusRecommendationProvider:Ljavax/inject/Provider;
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

.field private providePreviewRunnableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Runnable;",
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
    .line 16981
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16982
    invoke-static/range {p2 .. p2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    .line 16983
    invoke-static/range {p3 .. p3}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->rawImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;

    .line 16985
    invoke-static/range {p4 .. p4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->reprocessingImageWriterModule:Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;

    .line 16987
    invoke-static/range {p5 .. p5}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->reprocessingJpegImageReaderModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UKJ5E1P6UOR5EDPMIRJ799O6APQ9DLGMEPAICLGM8PBI9LNM8TBCCKTG____:Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;

    .line 16988
    invoke-static/range {p6 .. p6}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->smartMeteringLoopModule:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    .line 16989
    new-instance v2, Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    invoke-direct {v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    .line 16990
    new-instance v2, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    invoke-direct {v2}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 18998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19000
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 18999
    invoke-static {v2}, Lcom/android/camera/burst/BurstModule_ProvideBurstDeregistrationShutdownTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideBurstDeregistrationShutdownTaskProvider:Ljavax/inject/Provider;

    .line 19002
    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 19003
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 19005
    invoke-static {}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideDefaultShutdownTaskSetFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    .line 19004
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideBurstDeregistrationShutdownTaskProvider:Ljavax/inject/Provider;

    .line 19006
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 19007
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->setOfShutdownTaskProvider:Ljavax/inject/Provider;

    .line 19012
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->setOfShutdownTaskProvider:Ljavax/inject/Provider;

    .line 19011
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19010
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->twoStageShutdownProvider:Ljavax/inject/Provider;

    .line 19014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->twoStageShutdownProvider:Ljavax/inject/Provider;

    .line 19016
    invoke-static {v2}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideLifetimeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19015
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    .line 19018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->twoStageShutdownProvider:Ljavax/inject/Provider;

    .line 19020
    invoke-static {v2}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideDelayedShutdownFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19019
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    .line 19022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    .line 19027
    invoke-static {}, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCameraCommandExecutorFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19028
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19029
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v7, v7, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19030
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    .line 19024
    invoke-static/range {v2 .. v7}, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19023
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    .line 19033
    invoke-static {}, Lcom/android/camera/one/v2/common/ResponseManagerImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->responseManagerImplProvider:Ljavax/inject/Provider;

    .line 19035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->responseManagerImplProvider:Ljavax/inject/Provider;

    .line 19036
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule_ProvideResponseManagerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    .line 19039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19042
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19043
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 19041
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/photo/flash/AutoFlashIndicator_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19040
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 19045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 19047
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/photo/flash/FlashModule_ProvideFlashIndicatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19046
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 19050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19051
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$15900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->bindImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 19053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->rawImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->bindImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 19055
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSharedImageReaderFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQIC5RKIRB1CTIL4PB1CHIN4JBFCHQMOP9R9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19054
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    .line 19058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    .line 19060
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvidePreparableImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19059
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePreparableImageSourceProvider:Ljavax/inject/Provider;

    .line 19063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePreparableImageSourceProvider:Ljavax/inject/Provider;

    .line 19065
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19064
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSourceProvider:Ljavax/inject/Provider;

    .line 19068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSourceProvider:Ljavax/inject/Provider;

    .line 19069
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideImageReaderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    .line 19071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19073
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19072
    invoke-static {v2}, Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->frameRequestProcessorFactoryProvider:Ljavax/inject/Provider;

    .line 19075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19076
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->bindOutputImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 19078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->reprocessingJpegImageReaderModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UKJ5E1P6UOR5EDPMIRJ799O6APQ9DLGMEPAICLGM8PBI9LNM8TBCCKTG____:Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19083
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->bindOutputImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 19080
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQICLO74RR3CLPN6QBECT570PB795MM2PR5A9IM2P35E96MUP3LDHIJMJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19079
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSharedImageReaderProvider2:Ljavax/inject/Provider;

    .line 19086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSharedImageReaderProvider2:Ljavax/inject/Provider;

    .line 19087
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideReprocessingJpegSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReprocessingJpegSurfaceProvider:Ljavax/inject/Provider;

    .line 19090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReprocessingJpegSurfaceProvider:Ljavax/inject/Provider;

    .line 19091
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSurfaceProvider:Ljavax/inject/Provider;

    .line 19094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    .line 19095
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideFullSizeSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFullSizeSurfaceProvider:Ljavax/inject/Provider;

    .line 19098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFullSizeSurfaceProvider:Ljavax/inject/Provider;

    .line 19099
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSurfaceProvider2:Ljavax/inject/Provider;

    .line 19101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19106
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->bindImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 19103
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19102
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSharedImageReaderProvider3:Ljavax/inject/Provider;

    .line 19109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSharedImageReaderProvider3:Ljavax/inject/Provider;

    .line 19110
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideLargeSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLargeSurfaceProvider:Ljavax/inject/Provider;

    .line 19113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLargeSurfaceProvider:Ljavax/inject/Provider;

    .line 19114
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSurfaceProvider3:Ljavax/inject/Provider;

    .line 19116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19118
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19119
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19120
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19121
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    .line 19117
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureSessionSurfaceProvider:Ljavax/inject/Provider;

    .line 19123
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 19124
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSurfaceProvider:Ljavax/inject/Provider;

    .line 19125
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSurfaceProvider2:Ljavax/inject/Provider;

    .line 19126
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSurfaceProvider3:Ljavax/inject/Provider;

    .line 19127
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureSessionSurfaceProvider:Ljavax/inject/Provider;

    .line 19128
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 19129
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->forStreamConfigSetOfSurfaceProvider:Ljavax/inject/Provider;

    .line 19131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19134
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19135
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16200(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19136
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 19133
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideViewfinderStreamConfigFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19132
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 19138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 19139
    invoke-static {v2}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideViewfinderStreamConfigSetFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderStreamConfigSetProvider:Ljavax/inject/Provider;

    .line 19142
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 19143
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderStreamConfigSetProvider:Ljavax/inject/Provider;

    .line 19144
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 19145
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->forStreamConfigSetOfAsyncStreamConfigProvider:Ljavax/inject/Provider;

    .line 19147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->forStreamConfigSetOfSurfaceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->forStreamConfigSetOfAsyncStreamConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLargeSurfaceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFullSizeSurfaceProvider:Ljavax/inject/Provider;

    .line 19148
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLargeRawStreamConfigProvider:Ljavax/inject/Provider;

    .line 19154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19159
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLargeRawStreamConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19161
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19162
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19163
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19164
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v9, v9, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19165
    invoke-static {v9}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v10, v10, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19166
    invoke-static {v10}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v11, v11, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19167
    invoke-static {v11}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v11

    .line 19157
    invoke-static/range {v2 .. v11}, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19155
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReprocessableCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 19169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReprocessableCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 19170
    invoke-static {v2}, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideCaptureSessionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureSessionProvider:Ljavax/inject/Provider;

    .line 19173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->frameRequestProcessorFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureSessionProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19179
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 19175
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19174
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideRootFrameRequestProcessorProvider:Ljavax/inject/Provider;

    .line 19181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideRootFrameRequestProcessorProvider:Ljavax/inject/Provider;

    .line 19183
    invoke-static {v2}, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideFrameServerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19182
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    .line 19186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    .line 19188
    invoke-static {v2}, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideCaptureFrameServerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19187
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    .line 19191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19194
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19195
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19196
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19197
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19198
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v7, v7, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19199
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19200
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 19193
    invoke-static/range {v2 .. v8}, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19192
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->gcamDngImageWriterProvider:Ljavax/inject/Provider;

    .line 19202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19205
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19206
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19207
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19208
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19209
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$18000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v7, v7, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19210
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19211
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$18100(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v9, v9, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19212
    invoke-static {v9}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v10, v10, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19213
    invoke-static {v10}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$7000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->gcamDngImageWriterProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v13, v13, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19216
    invoke-static {v13}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v13

    .line 19204
    invoke-static/range {v2 .. v13}, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19203
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    .line 19218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19223
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    .line 19220
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusAvailabilityModule_ProvideHdrPlusImageCaptureAvailabilityFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19219
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideHdrPlusImageCaptureAvailabilityProvider:Ljavax/inject/Provider;

    .line 19226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->smartMeteringLoopModule:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19234
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19235
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v6

    .line 19229
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideEagerSmartMeteringProcessorFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19227
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideEagerSmartMeteringProcessorProvider:Ljavax/inject/Provider;

    .line 19237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideEagerSmartMeteringProcessorProvider:Ljavax/inject/Provider;

    .line 19238
    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusGcamMeteringModule_ProvideGcamAeResultsFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideGcamAeResultsProvider:Ljavax/inject/Provider;

    .line 19241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19244
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideGcamAeResultsProvider:Ljavax/inject/Provider;

    .line 19243
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusGcamMeteringModule_ProvideGcamAutoHdrPlusRecommendationFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideGcamAutoHdrPlusRecommendationProvider:Ljavax/inject/Provider;

    .line 19249
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19250
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19251
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19252
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17200(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFlashIndicatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideHdrPlusImageCaptureAvailabilityProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideGcamAutoHdrPlusRecommendationProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideGcamAeResultsProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v10, v10, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19257
    invoke-static {v10}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$18200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v11, v11, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19258
    invoke-static {v11}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v11

    .line 19248
    invoke-static/range {v2 .. v11}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusGcamMeteringProcessor_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFlashHdrPlusGcamMeteringProcessorProvider:Ljavax/inject/Provider;

    .line 19260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFlashHdrPlusGcamMeteringProcessorProvider:Ljavax/inject/Provider;

    .line 19262
    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusGcamMeteringModule_ProvideAutoFlashHdrPlusDecisionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAutoFlashHdrPlusDecisionProvider:Ljavax/inject/Provider;

    .line 19264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->smartMeteringLoopModule:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19271
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    .line 19267
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideLazySmartMeteringProcessorFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19265
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLazySmartMeteringProcessorProvider:Ljavax/inject/Provider;

    .line 19273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    .line 19276
    invoke-static {}, Lcom/google/android/apps/camera/aaa/AfStateMonitorImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    .line 19275
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFStateMonitorFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19274
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    .line 19280
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    .line 19279
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerImpl_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->afStateResponseListenerImplProvider:Ljavax/inject/Provider;

    .line 19285
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    .line 19284
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerNexus2016Impl_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->afStateResponseListenerNexus2016ImplProvider:Ljavax/inject/Provider;

    .line 19288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19291
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19292
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->afStateResponseListenerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->afStateResponseListenerNexus2016ImplProvider:Ljavax/inject/Provider;

    .line 19289
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAfRequestTransformerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19299
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19300
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19301
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    .line 19297
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideSceneChangeRequestTransformerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSceneChangeRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19303
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/FocusMonitor_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 19305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 19306
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideFocusMonitorRequestTransformerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFocusMonitorRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 19311
    invoke-static {v2}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceResponseListenerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2URB5EHGM8OBKC4NMCOB3CKNKCOB3CL26AT35CDQ6IRRE9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19310
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFaceResponseListenerProvider:Ljavax/inject/Provider;

    .line 19313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFaceResponseListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19316
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 19314
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceRequestTransformerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFaceRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19319
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/v2/common/FrameClock_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ldagger/MembersInjector;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->frameClockProvider:Ljavax/inject/Provider;

    .line 19321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->frameClockProvider:Ljavax/inject/Provider;

    .line 19322
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideFrameClockFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameClockProvider:Ljavax/inject/Provider;

    .line 19324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19326
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19327
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 19325
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->jpegThumbnailParametersImplProvider:Ljavax/inject/Provider;

    .line 19331
    invoke-static {}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->jpegThumbnailParametersImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19333
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 19330
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegThumbnailFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideJpegThumbnailProvider:Ljavax/inject/Provider;

    .line 19335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19337
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19336
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->viewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 19339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->viewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 19340
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideViewfinderJankLoggerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 19346
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideInstrumentationFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    .line 19345
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvidePreviewPerformanceSessionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19344
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePreviewPerformanceSessionProvider:Ljavax/inject/Provider;

    .line 19348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePreviewPerformanceSessionProvider:Ljavax/inject/Provider;

    .line 19349
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->viewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 19351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->viewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 19352
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideViewfinderJankRecorderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 19355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePreviewPerformanceSessionProvider:Ljavax/inject/Provider;

    .line 19356
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/ViewfinderStartupRecorder_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->viewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 19358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->viewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 19359
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideViewfinderStartupRecorderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 19362
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 19363
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 19364
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 19365
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 19366
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 19367
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->setOfSequentialFrameProcessorProvider:Ljavax/inject/Provider;

    .line 19369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->setOfSequentialFrameProcessorProvider:Ljavax/inject/Provider;

    .line 19370
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideFrameSequencerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameSequencerProvider:Ljavax/inject/Provider;

    .line 19375
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    .line 19376
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideUsageStatisticsFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19377
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 19374
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/stats/CaptureFailureLogger_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->captureFailureLoggerProvider:Ljavax/inject/Provider;

    .line 19379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->captureFailureLoggerProvider:Ljavax/inject/Provider;

    .line 19380
    invoke-static {v2}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideFailureLoggerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFailureLoggerProvider:Ljavax/inject/Provider;

    .line 19383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19385
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19384
    invoke-static {v2}, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack_ProvideCaptureResultVerifierFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureResultVerifierProvider:Ljavax/inject/Provider;

    .line 19388
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideCaptureResultFilterFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureResultFilterProvider:Ljavax/inject/Provider;

    .line 19390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureResultFilterProvider:Ljavax/inject/Provider;

    .line 19392
    invoke-static {v2}, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideViewfinderMetadataSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19391
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderMetadataSaverProvider:Ljavax/inject/Provider;

    .line 19395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderMetadataSaverProvider:Ljavax/inject/Provider;

    .line 19396
    invoke-static {v2}, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideViewfinderResponseListenerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderResponseListenerProvider:Ljavax/inject/Provider;

    .line 19399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSharedImageReaderProvider3:Ljavax/inject/Provider;

    .line 19401
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvidePreparableImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19400
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePreparableImageSourceProvider2:Ljavax/inject/Provider;

    .line 19404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePreparableImageSourceProvider2:Ljavax/inject/Provider;

    .line 19406
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19405
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSourceProvider2:Ljavax/inject/Provider;

    .line 19409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSourceProvider2:Ljavax/inject/Provider;

    .line 19410
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideImageReaderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageReaderProvider2:Ljavax/inject/Provider;

    .line 19412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19414
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19415
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 19413
    invoke-static {v2, v3}, Lcom/android/camera/util/ImageRotationCalculator_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 19416
    new-instance v2, Ldagger/internal/DelegateFactory;

    invoke-direct {v2}, Ldagger/internal/DelegateFactory;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 19418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19421
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageReaderProvider2:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 19420
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/advice/AdviceFrameRetrievalCommand_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19419
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->adviceFrameRetrievalCommandProvider:Ljavax/inject/Provider;

    .line 19430
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19431
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->adviceFrameRetrievalCommandProvider:Ljavax/inject/Provider;

    .line 19429
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/advice/AdvicePreviewListener_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19428
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->advicePreviewListenerProvider:Ljavax/inject/Provider;

    .line 19435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->advicePreviewListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19439
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19440
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 19437
    invoke-static {v2, v3, v4}, Lcom/android/camera/advice/AdviceModules_OneCameraAdviceModule_ProvideAdvicePreviewListenerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19436
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAdvicePreviewListenerProvider:Ljavax/inject/Provider;

    .line 19442
    const/16 v2, 0x9

    const/4 v3, 0x5

    .line 19443
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19444
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSceneChangeRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19445
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFocusMonitorRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19446
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFaceRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19447
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameClockProvider:Ljavax/inject/Provider;

    .line 19448
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 19449
    invoke-static {}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegQualityFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideJpegThumbnailProvider:Ljavax/inject/Provider;

    .line 19450
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameSequencerProvider:Ljavax/inject/Provider;

    .line 19451
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFailureLoggerProvider:Ljavax/inject/Provider;

    .line 19452
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 19454
    invoke-static {}, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack_ProvidePreviewRequestTransformerFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    .line 19453
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureResultVerifierProvider:Ljavax/inject/Provider;

    .line 19455
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderResponseListenerProvider:Ljavax/inject/Provider;

    .line 19456
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 19457
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideLensShadingMapFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAdvicePreviewListenerProvider:Ljavax/inject/Provider;

    .line 19458
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 19459
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->setOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 19463
    invoke-static {v2}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideLazyViewfinderStreamFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19462
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLazyViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 19466
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 19467
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLazyViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 19468
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 19469
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->setOfListenableFutureOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19472
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideMeteringParametersFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    .line 19476
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19477
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16800(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19478
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    .line 19475
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->zoomedCropRegionProvider:Ljavax/inject/Provider;

    .line 19480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->zoomedCropRegionProvider:Ljavax/inject/Provider;

    .line 19481
    invoke-static {v2}, Lcom/android/camera/one/v2/common/zoom/ZoomModule_ProvideCropRegionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 19485
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 19484
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AFMeteringRegion_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->aFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 19489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->aFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 19490
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFMeteringRegionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 19494
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 19493
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->aEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 19498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->aEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 19499
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAEMeteringRegionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 19502
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFModeFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    .line 19504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    .line 19505
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFModeParameterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFModeParameterProvider:Ljavax/inject/Provider;

    .line 19507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19509
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19508
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAeLockParameterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAeLockParameterProvider:Ljavax/inject/Provider;

    .line 19513
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19514
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16900(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19515
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19517
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v6

    .line 19512
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/common/ControlModeSelector_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->controlModeSelectorProvider:Ljavax/inject/Provider;

    .line 19519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->controlModeSelectorProvider:Ljavax/inject/Provider;

    .line 19520
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideControlModeSelectorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideControlModeSelectorProvider:Ljavax/inject/Provider;

    .line 19525
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19526
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16900(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19527
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19528
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    .line 19524
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->controlSceneModeSelectorProvider:Ljavax/inject/Provider;

    .line 19530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->controlSceneModeSelectorProvider:Ljavax/inject/Provider;

    .line 19531
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideControlSceneModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideControlSceneModeProvider:Ljavax/inject/Provider;

    .line 19536
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19537
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19538
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19539
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17200(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    .line 19535
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/common/FlashHdrPlusBasedAEMode_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->flashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 19541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->flashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 19542
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideFlashHdrPlusBasedAEModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFlashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 19547
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19548
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 19546
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->statisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 19554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->statisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 19555
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideStatisticsFaceDetectModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideStatisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 19558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19560
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19559
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideExposureCompensationFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideExposureCompensationProvider:Ljavax/inject/Provider;

    .line 19562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19564
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19563
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideWhiteBalanceModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideWhiteBalanceModeProvider:Ljavax/inject/Provider;

    .line 19566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 19567
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegRotationFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideJpegRotationProvider:Ljavax/inject/Provider;

    .line 19570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 19571
    invoke-static {v2}, Lcom/android/camera/one/v2/common/zoom/ZoomModule_ProvideZoomParameterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideZoomParameterProvider:Ljavax/inject/Provider;

    .line 19573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->responseManagerImplProvider:Ljavax/inject/Provider;

    .line 19574
    invoke-static {v2}, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule_ProvideResponseManagerRequestTransformerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideResponseManagerRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 19579
    invoke-static {v2}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideDeferredViewfinderStreamFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19578
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDeferredViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 19583
    invoke-static {}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideRequestTransformerStateFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideRequestTransformerStateProvider:Ljavax/inject/Provider;

    .line 19585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideRequestTransformerStateProvider:Ljavax/inject/Provider;

    .line 19586
    invoke-static {v2}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideImageCaptureCommandRequestTransformerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageCaptureCommandRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19589
    const/16 v2, 0xe

    const/4 v3, 0x1

    .line 19590
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 19591
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 19592
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFModeParameterProvider:Ljavax/inject/Provider;

    .line 19593
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAeLockParameterProvider:Ljavax/inject/Provider;

    .line 19594
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideControlModeSelectorProvider:Ljavax/inject/Provider;

    .line 19595
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideControlSceneModeProvider:Ljavax/inject/Provider;

    .line 19596
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFlashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 19597
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideStatisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 19598
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideExposureCompensationProvider:Ljavax/inject/Provider;

    .line 19599
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideWhiteBalanceModeProvider:Ljavax/inject/Provider;

    .line 19600
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideJpegRotationProvider:Ljavax/inject/Provider;

    .line 19601
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideZoomParameterProvider:Ljavax/inject/Provider;

    .line 19602
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideResponseManagerRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19603
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDeferredViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 19604
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageCaptureCommandRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19605
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 19606
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->setOfObservableOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    check-cast v2, Ldagger/internal/DelegateFactory;

    .line 19610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->setOfRequestTransformerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->setOfListenableFutureOfRequestTransformerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->setOfObservableOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 19612
    invoke-static {v3, v4, v5}, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule_ProvideDefaultRequestTemplateFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v3

    .line 19611
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 19616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 19619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->smartMeteringLoopModule:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureResultFilterProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->frameClockProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19629
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    .line 19622
    invoke-static/range {v2 .. v9}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideMeteringLoopStarterFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19620
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideMeteringLoopStarterProvider:Ljavax/inject/Provider;

    .line 19632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->smartMeteringLoopModule:Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideEagerSmartMeteringProcessorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLazySmartMeteringProcessorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideMeteringLoopStarterProvider:Ljavax/inject/Provider;

    .line 19635
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideSmartMeteringManagerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19633
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSmartMeteringManagerProvider:Ljavax/inject/Provider;

    .line 19642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSmartMeteringManagerProvider:Ljavax/inject/Provider;

    .line 19644
    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideSmartMeteringControllerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSmartMeteringControllerProvider:Ljavax/inject/Provider;

    .line 19646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19648
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19647
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/SimpleConvergence3A_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->simpleConvergence3AProvider:Ljavax/inject/Provider;

    .line 19650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19652
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19651
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/SimultaneousConvergence3A_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->simultaneousConvergence3AProvider:Ljavax/inject/Provider;

    .line 19654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19656
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->simpleConvergence3AProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->simultaneousConvergence3AProvider:Ljavax/inject/Provider;

    .line 19655
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_Provide3AConvergenceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    .line 19660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19662
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19663
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19665
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19666
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 19661
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->hdrPlusBurstTakerProvider:Ljavax/inject/Provider;

    .line 19668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19671
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19672
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19673
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSmartMeteringControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->hdrPlusBurstTakerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v12, v12, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19681
    invoke-static {v12}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderMetadataSaverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19683
    invoke-static {v14}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideHdrPlusImageCaptureAvailabilityProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    move-object/from16 v16, v0

    .line 19685
    invoke-static/range {v16 .. v16}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$18300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v16

    .line 19670
    invoke-static/range {v2 .. v16}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19669
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->hdrPlusImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 19687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19689
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19688
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->simpleTorchSwitchProvider:Ljavax/inject/Provider;

    .line 19691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->simpleTorchSwitchProvider:Ljavax/inject/Provider;

    .line 19692
    invoke-static {v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideTorchControlFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideTorchControlProvider:Ljavax/inject/Provider;

    .line 19694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19697
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19698
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19699
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSmartMeteringControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideGcamWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->hdrPlusBurstTakerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v12, v12, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19707
    invoke-static {v12}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideViewfinderMetadataSaverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideTorchControlProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19710
    invoke-static {v15}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideHdrPlusImageCaptureAvailabilityProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    move-object/from16 v17, v0

    .line 19712
    invoke-static/range {v17 .. v17}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$18300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v17

    .line 19696
    invoke-static/range {v2 .. v17}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19695
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->hdrPlusTorchImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 19714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19716
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAutoFlashHdrPlusDecisionProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->hdrPlusImageCaptureCommandProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->hdrPlusTorchImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 19715
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFlashHdrPlusImageCaptureCommandFactoryProvider:Ljavax/inject/Provider;

    .line 19721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSourceProvider2:Ljavax/inject/Provider;

    .line 19723
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/FrameAllocatorModules_LargeFrameAllocatorModule_ProvideFrameAllocatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19722
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    .line 19726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideRootFrameRequestProcessorProvider:Ljavax/inject/Provider;

    .line 19727
    invoke-static {v2}, Lcom/android/camera/one/v2/core/ReprocessibleFrameServerModule_ProvideReprocessingSessionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReprocessingSessionProvider:Ljavax/inject/Provider;

    .line 19730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19732
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19731
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/util/NativeYUV_420_888ImageCopier_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->nativeYUV_420_888ImageCopierProvider:Ljavax/inject/Provider;

    .line 19734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->nativeYUV_420_888ImageCopierProvider:Ljavax/inject/Provider;

    .line 19735
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/util/UtilModule_ProvideImageCopierFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageCopierProvider:Ljavax/inject/Provider;

    .line 19737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19739
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19741
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageCopierProvider:Ljavax/inject/Provider;

    .line 19738
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->managedImageWriterFactoryProvider:Ljavax/inject/Provider;

    .line 19744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->reprocessingImageWriterModule:Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureSessionProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->managedImageWriterFactoryProvider:Ljavax/inject/Provider;

    .line 19746
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule_ProvideReprocessingImageWriterFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQICLO74RR3CLPN6QBECT4MQOB7CLBN4QBKCLP4QRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19745
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReprocessingImageWriterProvider:Ljavax/inject/Provider;

    .line 19751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSharedImageReaderProvider2:Ljavax/inject/Provider;

    .line 19752
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSourceProvider3:Ljavax/inject/Provider;

    .line 19755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19759
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReprocessingSessionProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReprocessingImageWriterProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSourceProvider3:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v7, v7, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19763
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19764
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 19757
    invoke-static/range {v2 .. v8}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules_ReprocessingModule_ProvideReprocessingSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19756
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReprocessingSaverProvider:Ljavax/inject/Provider;

    .line 19766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReprocessingSaverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19770
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 19768
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_Reprocessing_ProvideAsyncReprocessableImageSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19767
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAsyncReprocessableImageSaverProvider:Ljavax/inject/Provider;

    .line 19774
    invoke-static {}, Lcom/android/camera/processing/imagebackend/MostRecentImageFilter_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    .line 19773
    invoke-static {v2}, Lcom/android/camera/processing/imagebackend/ImageFilterModules_MostRecentImageFilterModule_ProvideImageFilterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageFilterProvider:Ljavax/inject/Provider;

    .line 19776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageFilterProvider:Ljavax/inject/Provider;

    .line 19777
    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageFilterImageSelectorProvider:Ljavax/inject/Provider;

    .line 19779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19781
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19780
    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->tuningDataLoggerProvider:Ljavax/inject/Provider;

    .line 19786
    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/tuning/ProductionNoopImageWriter_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->tuningDataLoggerProvider:Ljavax/inject/Provider;

    .line 19785
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NullTuningModule_ProvideDataCollectorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19784
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDataCollectorProvider:Ljavax/inject/Provider;

    .line 19788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageFilterImageSelectorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDataCollectorProvider:Ljavax/inject/Provider;

    .line 19789
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule_ProvideImageSelectorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSelectorProvider:Ljavax/inject/Provider;

    .line 19792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19794
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19795
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 19793
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageBackendThumbnailerProvider:Ljavax/inject/Provider;

    .line 19797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageBackendThumbnailerProvider:Ljavax/inject/Provider;

    .line 19798
    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ThumbnailModule_ProvideThumbnailerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideThumbnailerProvider:Ljavax/inject/Provider;

    .line 19800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19803
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19804
    invoke-static {}, Lcom/android/camera/exif/ExifInterface_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAsyncReprocessableImageSaverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSelectorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideThumbnailerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDataCollectorProvider:Ljavax/inject/Provider;

    .line 19810
    invoke-static {}, Lcom/google/android/apps/camera/util/time/IntervalClock_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v10, v10, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19811
    invoke-static {v10}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v11, v11, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19812
    invoke-static {v11}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v11

    .line 19802
    invoke-static/range {v2 .. v11}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_Reprocessing_ProvideImageSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19801
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    .line 19815
    invoke-static {}, Lcom/android/camera/one/v2/photo/ImageCaptureThreshold_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    .line 19817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19819
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19820
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    .line 19818
    invoke-static/range {v2 .. v9}, Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->singleFlashCommandFactoryProvider:Ljavax/inject/Provider;

    .line 19828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19830
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    .line 19829
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->defaultZslRingBufferPolicyProvider:Ljavax/inject/Provider;

    .line 19833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19835
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19834
    invoke-static {v2}, Lcom/android/camera/processing/imagebackend/LuckyShotMetrics_GcamSharpness_ProvideLuckyShotMetricFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLuckyShotMetricProvider:Ljavax/inject/Provider;

    .line 19837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19840
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19842
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19843
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDataCollectorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLuckyShotMetricProvider:Ljavax/inject/Provider;

    .line 19839
    invoke-static/range {v2 .. v8}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19838
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSaverProvider2:Ljavax/inject/Provider;

    .line 19848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19850
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19851
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSaverProvider2:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->defaultZslRingBufferPolicyProvider:Ljavax/inject/Provider;

    .line 19849
    invoke-static/range {v2 .. v8}, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->burstZslCommandFactoryProvider:Ljavax/inject/Provider;

    .line 19858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->defaultZslRingBufferPolicyProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->burstZslCommandFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19862
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    .line 19859
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->restrictedBurstZslCommandFactoryProvider:Ljavax/inject/Provider;

    .line 19864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19866
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19867
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageSaverProvider2:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    .line 19865
    invoke-static/range {v2 .. v9}, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->burstNoFlashCommandFactoryProvider:Ljavax/inject/Provider;

    .line 19875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->burstNoFlashCommandFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19878
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 19876
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->restrictedBurstCommandFactoryProvider:Ljavax/inject/Provider;

    .line 19880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFlashHdrPlusImageCaptureCommandFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->singleFlashCommandFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->restrictedBurstZslCommandFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->restrictedBurstCommandFactoryProvider:Ljavax/inject/Provider;

    .line 19883
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusGcamMetering_ProvideStateTrackingImageCaptureCommandFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19881
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideStateTrackingImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 19889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideStateTrackingImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 19890
    invoke-static {v2}, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusGcamMetering_ProvideImageCaptureCommandFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 19893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19898
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageCaptureCommandProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideRequestTransformerStateProvider:Ljavax/inject/Provider;

    .line 19895
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvidePictureTakerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19894
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePictureTakerProvider:Ljavax/inject/Provider;

    .line 19902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 19906
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/ActiveScanRequestBuilder_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 19903
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->aeAfActiveScannerProvider:Ljavax/inject/Provider;

    .line 19909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    .line 19911
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideScheduledExecutorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19910
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideScheduledExecutorProvider:Ljavax/inject/Provider;

    .line 19914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19917
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19918
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    .line 19915
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFHoldSecondsFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFHoldSecondsProvider:Ljavax/inject/Provider;

    .line 19920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideScheduledExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFHoldSecondsProvider:Ljavax/inject/Provider;

    .line 19921
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideResettingDelayedExecutorFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideResettingDelayedExecutorProvider:Ljavax/inject/Provider;

    .line 19924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19928
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    .line 19929
    invoke-static {}, Lcom/android/camera/one/Settings3A_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->aeAfActiveScannerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideResettingDelayedExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v10, v10, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19934
    invoke-static {v10}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v11, v11, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19935
    invoke-static {v11}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v11

    .line 19925
    invoke-static/range {v2 .. v11}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->touchToFocusImplProvider:Ljavax/inject/Provider;

    .line 19937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideResettingDelayedExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19941
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    .line 19944
    invoke-static {}, Lcom/android/camera/one/Settings3A_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->aeAfActiveScannerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v9, v9, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19946
    invoke-static {v9}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v10, v10, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19947
    invoke-static {v10}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v10

    .line 19938
    invoke-static/range {v2 .. v10}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->touchToFocusSmartImplProvider:Ljavax/inject/Provider;

    .line 19949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 19953
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 19954
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->touchToFocusImplProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->touchToFocusSmartImplProvider:Ljavax/inject/Provider;

    .line 19951
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19950
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFControlProvider:Ljavax/inject/Provider;

    .line 19958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAutoFlashHdrPlusDecisionProvider:Ljavax/inject/Provider;

    .line 19960
    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusGcamMeteringModule_ProvideAutoFlashHdrPlusNotificationFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAutoFlashHdrPlusNotificationProvider:Ljavax/inject/Provider;

    .line 19962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideStateTrackingImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 19965
    invoke-static {v2}, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusGcamMetering_ProvideImageCaptureStateTrackerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19963
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageCaptureStateTrackerProvider:Ljavax/inject/Provider;

    .line 19967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageCaptureStateTrackerProvider:Ljavax/inject/Provider;

    .line 19969
    invoke-static {v2}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideCaptureStateFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 19968
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureStateProvider:Ljavax/inject/Provider;

    .line 19972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    .line 19973
    invoke-static {v2}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule_ProvideFirstFrameListenerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFirstFrameListenerProvider:Ljavax/inject/Provider;

    .line 19976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 19977
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/preview/PreviewCommand_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->previewCommandProvider:Ljavax/inject/Provider;

    .line 19980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReprocessableCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 19981
    invoke-static {v2}, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideDeferredSessionFutureFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDeferredSessionFutureProvider:Ljavax/inject/Provider;

    .line 19984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->previewCommandProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDeferredSessionFutureProvider:Ljavax/inject/Provider;

    .line 19985
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePreviewStartTaskProvider:Ljavax/inject/Provider;

    .line 19992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReprocessableCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 19993
    invoke-static {v2}, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideCaptureSessionStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureSessionStartTaskProvider:Ljavax/inject/Provider;

    .line 19996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReprocessableCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 19997
    invoke-static {v2}, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideSurfacePreparerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSurfacePreparerProvider:Ljavax/inject/Provider;

    .line 20000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->rawImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSurfacePreparerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePreparableImageSourceProvider:Ljavax/inject/Provider;

    .line 20001
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSurfacePrepareStartTaskFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQIC5RKIRB1CTIL4PB1CHIN4JBFCHQMOP9R9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSurfacePrepareStartTaskProvider:Ljavax/inject/Provider;

    .line 20007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSurfacePreparerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSharedImageReaderProvider3:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePreparableImageSourceProvider2:Ljavax/inject/Provider;

    .line 20008
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSurfacePrepareStartTaskFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSurfacePrepareStartTaskProvider2:Ljavax/inject/Provider;

    .line 20014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 20017
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 20016
    invoke-static {v2, v3, v4}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideReadyStateLoggingStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 20015
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReadyStateLoggingStartTaskProvider:Ljavax/inject/Provider;

    .line 20021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSmartMeteringManagerProvider:Ljavax/inject/Provider;

    .line 20023
    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_SmartMeteringLoopModule_ProvideSmartMeteringStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSmartMeteringStartTaskProvider:Ljavax/inject/Provider;

    .line 20025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->previewCommandProvider:Ljavax/inject/Provider;

    .line 20027
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewRunnableFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 20026
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePreviewRunnableProvider:Ljavax/inject/Provider;

    .line 20030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 20034
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePreviewRunnableProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 20037
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 20038
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 20031
    invoke-static/range {v2 .. v8}, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideBurstCaptureCommandFactoryProvider:Ljavax/inject/Provider;

    .line 20040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAsyncReprocessableImageSaverProvider:Ljavax/inject/Provider;

    .line 20045
    invoke-static {}, Lcom/android/camera/burst/BurstModule_ProvideReprocessingParametersFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    .line 20043
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvReprocessingModule_ProvideBurstReprocessingImageSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 20041
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideBurstReprocessingImageSaverProvider:Ljavax/inject/Provider;

    .line 20047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 20049
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideBurstReprocessingImageSaverProvider:Ljavax/inject/Provider;

    .line 20048
    invoke-static {v2, v3}, Lcom/android/camera/one/v2/imagesaver/burst/ImageBackendBasedBurstProcessor_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageBackendBasedBurstProcessorProvider:Ljavax/inject/Provider;

    .line 20052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAsyncReprocessableImageSaverProvider:Ljavax/inject/Provider;

    .line 20055
    invoke-static {}, Lcom/android/camera/burst/BurstModule_ProvideReprocessingParametersFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    .line 20053
    invoke-static {v2, v3}, Lcom/android/camera/burst/BurstModule_ProvideFrameSaverFactoryFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameSaverFactoryProvider:Ljavax/inject/Provider;

    .line 20057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideBurstCaptureCommandFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->imageBackendBasedBurstProcessorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFrameSaverFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 20063
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 20058
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideBurstProcessingParametersProvider:Ljavax/inject/Provider;

    .line 20065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 20067
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideBurstProcessingParametersProvider:Ljavax/inject/Provider;

    .line 20066
    invoke-static {v2, v3}, Lcom/android/camera/burst/BurstModule_ProvideBurstRegistrationStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideBurstRegistrationStartTaskProvider:Ljavax/inject/Provider;

    .line 20070
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 20071
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFirstFrameListenerProvider:Ljavax/inject/Provider;

    .line 20072
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePreviewStartTaskProvider:Ljavax/inject/Provider;

    .line 20073
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureSessionStartTaskProvider:Ljavax/inject/Provider;

    .line 20074
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSurfacePrepareStartTaskProvider:Ljavax/inject/Provider;

    .line 20075
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSurfacePrepareStartTaskProvider2:Ljavax/inject/Provider;

    .line 20076
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideReadyStateLoggingStartTaskProvider:Ljavax/inject/Provider;

    .line 20077
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideSmartMeteringStartTaskProvider:Ljavax/inject/Provider;

    .line 20078
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideBurstRegistrationStartTaskProvider:Ljavax/inject/Provider;

    .line 20079
    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    .line 20080
    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->setOfStartTaskProvider:Ljavax/inject/Provider;

    .line 20082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->setOfStartTaskProvider:Ljavax/inject/Provider;

    .line 20084
    invoke-static {v2}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideCameraStarterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 20083
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCameraStarterProvider:Ljavax/inject/Provider;

    .line 20086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 20087
    invoke-static {v2}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFacesFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2URB5EHGM8OBKC4NMCOB3CKNKCOB3CL26AT35CDQ6IRRE9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFacesProvider:Ljavax/inject/Provider;

    .line 20089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideGcamAeResultsProvider:Ljavax/inject/Provider;

    .line 20091
    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusGcamMeteringModule_ProvideMeteringDataFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 20090
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideMeteringDataProvider:Ljavax/inject/Provider;

    .line 20094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 20097
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->providePictureTakerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 20099
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFControlProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 20101
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAutoFlashHdrPlusNotificationProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCaptureStateProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideCameraStarterProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFacesProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideMeteringDataProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 20095
    invoke-static/range {v2 .. v14}, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->genericOneCameraProvider:Ljavax/inject/Provider;

    .line 20110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->genericOneCameraProvider:Ljavax/inject/Provider;

    .line 20112
    invoke-static {v2}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule_ProvideOneCameraFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 20111
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideOneCameraProvider:Ljavax/inject/Provider;

    .line 16993
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;B)V
    .locals 0

    .prologue
    .line 16538
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;)V

    return-void
.end method


# virtual methods
.method public final oneCamera()Lcom/android/camera/one/OneCamera;
    .locals 1

    .prologue
    .line 18117
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;->provideOneCameraProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera;

    return-object v0
.end method
