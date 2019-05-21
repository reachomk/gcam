.class final Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;
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
    name = "Nexus6ZslYuvSoftwareJpegImpl"
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

.field private autoFlashCommandSwitcherFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/collect/Sets;",
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

.field private captureFailureLoggerProvider:Ljavax/inject/Provider;

.field private controlModeSelectorProvider:Ljavax/inject/Provider;

.field private controlSceneModeSelectorProvider:Ljavax/inject/Provider;

.field private defaultZslRingBufferPolicyProvider:Ljavax/inject/Provider;

.field private final faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

.field private factoryProvider:Ljavax/inject/Provider;

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

.field private imageSaverTraceValidatorProvider:Ljavax/inject/Provider;

.field private jpegThumbnailParametersImplProvider:Ljavax/inject/Provider;

.field private final largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

.field private metadataValidatorUtilProvider:Ljavax/inject/Provider;

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

.field private provideBurstImageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
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

.field private provideCancellationValidatorProvider:Ljavax/inject/Provider;

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

.field private provideCaptureSessionCreatorProvider:Ljavax/inject/Provider;

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

.field private provideDefaultStreamConfigProvider:Ljavax/inject/Provider;
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

.field private provideFlashPhotoValidatorProvider:Ljavax/inject/Provider;

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

.field private provideLegacyValidatorProvider:Ljavax/inject/Provider;

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

.field private provideNpfReprocessingValidatorProvider:Ljavax/inject/Provider;

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

.field private provideRegularPhotoValidatorProvider:Ljavax/inject/Provider;

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

.field private provideTracerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private provideValidationProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTraceProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private provideViewfinderJankLoggerProvider:Ljavax/inject/Provider;

.field private provideViewfinderJankRecorderProvider:Ljavax/inject/Provider;

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

.field private responseManagerImplProvider:Ljavax/inject/Provider;

.field private setOfFlowValidatorProvider:Ljavax/inject/Provider;

.field private setOfImageSaverTraceProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTraceProcessor;",
            ">;>;"
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

.field private singleNoFlashCommandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private singleZslCommandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private statisticsFaceDetectModeProvider:Ljavax/inject/Provider;

.field private synthetic this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

.field private torchResetCommandProvider:Ljavax/inject/Provider;

.field private torchResetTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/StartTask;",
            ">;"
        }
    .end annotation
.end field

.field private touchToFocusImplProvider:Ljavax/inject/Provider;

.field private touchToFocusSmartImplProvider:Ljavax/inject/Provider;

.field private twoStageShutdownProvider:Ljavax/inject/Provider;

.field private viewfinderJankLoggerProvider:Ljavax/inject/Provider;

.field private viewfinderJankRecorderProvider:Ljavax/inject/Provider;

.field private viewfinderStartupRecorderProvider:Ljavax/inject/Provider;

.field private yuvImageBackendImageSaverProvider:Ljavax/inject/Provider;

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
.method private constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;)V
    .locals 13

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 12714
    iput-object p1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12715
    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    .line 12716
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    .line 12717
    new-instance v0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    invoke-direct {v0}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 13725
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13727
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13726
    invoke-static {v0}, Lcom/android/camera/burst/BurstModule_ProvideBurstDeregistrationShutdownTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideBurstDeregistrationShutdownTaskProvider:Ljavax/inject/Provider;

    .line 13730
    invoke-static {v9, v9}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideBurstDeregistrationShutdownTaskProvider:Ljavax/inject/Provider;

    .line 13731
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 13733
    invoke-static {}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideDefaultShutdownTaskSetFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 13732
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 13734
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfShutdownTaskProvider:Ljavax/inject/Provider;

    .line 13739
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfShutdownTaskProvider:Ljavax/inject/Provider;

    .line 13738
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13737
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->twoStageShutdownProvider:Ljavax/inject/Provider;

    .line 13741
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->twoStageShutdownProvider:Ljavax/inject/Provider;

    .line 13743
    invoke-static {v0}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideLifetimeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13742
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    .line 13745
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->twoStageShutdownProvider:Ljavax/inject/Provider;

    .line 13747
    invoke-static {v0}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideDelayedShutdownFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13746
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    .line 13749
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    .line 13754
    invoke-static {}, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCameraCommandExecutorFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13755
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13756
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13757
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 13751
    invoke-static/range {v0 .. v5}, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13750
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    .line 13760
    invoke-static {}, Lcom/android/camera/one/v2/common/ResponseManagerImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->responseManagerImplProvider:Ljavax/inject/Provider;

    .line 13762
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->responseManagerImplProvider:Ljavax/inject/Provider;

    .line 13763
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule_ProvideResponseManagerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    .line 13766
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13769
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13770
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    .line 13768
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/flash/AutoFlashIndicator_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13767
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->autoFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 13772
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->autoFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 13774
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/flash/FlashModule_ProvideFlashIndicatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13773
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 13777
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13778
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$15900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->bindImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 13780
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13785
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->bindImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 13782
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13781
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    .line 13788
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    .line 13790
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvidePreparableImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13789
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->providePreparableImageSourceProvider:Ljavax/inject/Provider;

    .line 13793
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->providePreparableImageSourceProvider:Ljavax/inject/Provider;

    .line 13795
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13794
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageSourceProvider:Ljavax/inject/Provider;

    .line 13798
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageSourceProvider:Ljavax/inject/Provider;

    .line 13800
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/FrameAllocatorModules_LargeFrameAllocatorModule_ProvideFrameAllocatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13799
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    .line 13803
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13805
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13804
    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->frameRequestProcessorFactoryProvider:Ljavax/inject/Provider;

    .line 13807
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13809
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13810
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13811
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13812
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 13808
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureSessionSurfaceProvider:Ljavax/inject/Provider;

    .line 13814
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    .line 13815
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideLargeSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLargeSurfaceProvider:Ljavax/inject/Provider;

    .line 13818
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLargeSurfaceProvider:Ljavax/inject/Provider;

    .line 13819
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideSurfaceProvider:Ljavax/inject/Provider;

    .line 13822
    invoke-static {v9, v9}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureSessionSurfaceProvider:Ljavax/inject/Provider;

    .line 13823
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideSurfaceProvider:Ljavax/inject/Provider;

    .line 13824
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 13825
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->forStreamConfigSetOfSurfaceProvider:Ljavax/inject/Provider;

    .line 13827
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13830
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13831
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16200(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13832
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 13829
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideViewfinderStreamConfigFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13828
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 13834
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 13835
    invoke-static {v0}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideViewfinderStreamConfigSetFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideViewfinderStreamConfigSetProvider:Ljavax/inject/Provider;

    .line 13839
    invoke-static {v9, v10}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideViewfinderStreamConfigSetProvider:Ljavax/inject/Provider;

    .line 13840
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 13841
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->forStreamConfigSetOfAsyncStreamConfigProvider:Ljavax/inject/Provider;

    .line 13843
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->forStreamConfigSetOfSurfaceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->forStreamConfigSetOfAsyncStreamConfigProvider:Ljavax/inject/Provider;

    .line 13844
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_NoStreamSharing_ProvideDefaultStreamConfigFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultStreamConfigProvider:Ljavax/inject/Provider;

    .line 13847
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13851
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultStreamConfigProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13853
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13854
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13855
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13856
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v7, v7, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13857
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13858
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 13849
    invoke-static/range {v0 .. v8}, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule_ProvideCaptureSessionCreatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13848
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 13860
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 13861
    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule_ProvideCaptureSessionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureSessionProvider:Ljavax/inject/Provider;

    .line 13864
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->frameRequestProcessorFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureSessionProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13870
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 13866
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13865
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideRootFrameRequestProcessorProvider:Ljavax/inject/Provider;

    .line 13872
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideRootFrameRequestProcessorProvider:Ljavax/inject/Provider;

    .line 13874
    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideFrameServerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13873
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    .line 13877
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    .line 13879
    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideCaptureFrameServerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13878
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    .line 13882
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    .line 13885
    invoke-static {}, Lcom/google/android/apps/camera/aaa/AfStateMonitorImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 13884
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFStateMonitorFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13883
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    .line 13889
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    .line 13888
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerImpl_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->afStateResponseListenerImplProvider:Ljavax/inject/Provider;

    .line 13894
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    .line 13893
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerNexus2016Impl_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->afStateResponseListenerNexus2016ImplProvider:Ljavax/inject/Provider;

    .line 13897
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13900
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13901
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->afStateResponseListenerImplProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->afStateResponseListenerNexus2016ImplProvider:Ljavax/inject/Provider;

    .line 13898
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAfRequestTransformerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 13905
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13908
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13909
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13910
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 13906
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideSceneChangeRequestTransformerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideSceneChangeRequestTransformerProvider:Ljavax/inject/Provider;

    .line 13912
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/FocusMonitor_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 13914
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 13915
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideFocusMonitorRequestTransformerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFocusMonitorRequestTransformerProvider:Ljavax/inject/Provider;

    .line 13918
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 13920
    invoke-static {v0}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceResponseListenerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2URB5EHGM8OBKC4NMCOB3CKNKCOB3CL26AT35CDQ6IRRE9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13919
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFaceResponseListenerProvider:Ljavax/inject/Provider;

    .line 13922
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFaceResponseListenerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13925
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 13923
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceRequestTransformerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFaceRequestTransformerProvider:Ljavax/inject/Provider;

    .line 13928
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/one/v2/common/FrameClock_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ldagger/MembersInjector;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->frameClockProvider:Ljavax/inject/Provider;

    .line 13930
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->frameClockProvider:Ljavax/inject/Provider;

    .line 13931
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideFrameClockFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameClockProvider:Ljavax/inject/Provider;

    .line 13933
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13935
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13936
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    .line 13934
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->jpegThumbnailParametersImplProvider:Ljavax/inject/Provider;

    .line 13940
    invoke-static {}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->jpegThumbnailParametersImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13942
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 13939
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegThumbnailFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideJpegThumbnailProvider:Ljavax/inject/Provider;

    .line 13944
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13946
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13945
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->viewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 13948
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->viewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 13949
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideViewfinderJankLoggerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideViewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 13955
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideInstrumentationFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    .line 13954
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvidePreviewPerformanceSessionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 13953
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->providePreviewPerformanceSessionProvider:Ljavax/inject/Provider;

    .line 13957
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->providePreviewPerformanceSessionProvider:Ljavax/inject/Provider;

    .line 13958
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->viewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 13960
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->viewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 13961
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideViewfinderJankRecorderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideViewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 13964
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->providePreviewPerformanceSessionProvider:Ljavax/inject/Provider;

    .line 13965
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/ViewfinderStartupRecorder_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->viewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 13967
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->viewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 13968
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideViewfinderStartupRecorderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideViewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 13971
    const/4 v0, 0x3

    .line 13972
    invoke-static {v0, v10}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideViewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 13973
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideViewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 13974
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideViewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 13975
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 13976
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfSequentialFrameProcessorProvider:Ljavax/inject/Provider;

    .line 13978
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfSequentialFrameProcessorProvider:Ljavax/inject/Provider;

    .line 13979
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideFrameSequencerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameSequencerProvider:Ljavax/inject/Provider;

    .line 13984
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    .line 13985
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideUsageStatisticsFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13986
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 13983
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/stats/CaptureFailureLogger_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->captureFailureLoggerProvider:Ljavax/inject/Provider;

    .line 13988
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->captureFailureLoggerProvider:Ljavax/inject/Provider;

    .line 13989
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideFailureLoggerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFailureLoggerProvider:Ljavax/inject/Provider;

    .line 13992
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageSourceProvider:Ljavax/inject/Provider;

    .line 13993
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideImageReaderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    .line 13995
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 13997
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 13998
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    .line 13996
    invoke-static {v0, v1}, Lcom/android/camera/util/ImageRotationCalculator_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 13999
    new-instance v0, Ldagger/internal/DelegateFactory;

    invoke-direct {v0}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 14001
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14004
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 14003
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/advice/AdviceFrameRetrievalCommand_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14002
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->adviceFrameRetrievalCommandProvider:Ljavax/inject/Provider;

    .line 14013
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14014
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->adviceFrameRetrievalCommandProvider:Ljavax/inject/Provider;

    .line 14012
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/advice/AdvicePreviewListener_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14011
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->advicePreviewListenerProvider:Ljavax/inject/Provider;

    .line 14018
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->advicePreviewListenerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14022
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14023
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 14020
    invoke-static {v0, v1, v2}, Lcom/android/camera/advice/AdviceModules_OneCameraAdviceModule_ProvideAdvicePreviewListenerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14019
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAdvicePreviewListenerProvider:Ljavax/inject/Provider;

    .line 14026
    invoke-static {v11, v11}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 14027
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideSceneChangeRequestTransformerProvider:Ljavax/inject/Provider;

    .line 14028
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFocusMonitorRequestTransformerProvider:Ljavax/inject/Provider;

    .line 14029
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFaceRequestTransformerProvider:Ljavax/inject/Provider;

    .line 14030
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameClockProvider:Ljavax/inject/Provider;

    .line 14031
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 14032
    invoke-static {}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegQualityFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideJpegThumbnailProvider:Ljavax/inject/Provider;

    .line 14033
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameSequencerProvider:Ljavax/inject/Provider;

    .line 14034
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFailureLoggerProvider:Ljavax/inject/Provider;

    .line 14035
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAdvicePreviewListenerProvider:Ljavax/inject/Provider;

    .line 14036
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 14037
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 14039
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 14041
    invoke-static {v0}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideLazyViewfinderStreamFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14040
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLazyViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 14045
    invoke-static {v10, v9}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLazyViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 14046
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 14047
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfListenableFutureOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 14050
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideMeteringParametersFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    .line 14054
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14055
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16800(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14056
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 14053
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->zoomedCropRegionProvider:Ljavax/inject/Provider;

    .line 14058
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->zoomedCropRegionProvider:Ljavax/inject/Provider;

    .line 14059
    invoke-static {v0}, Lcom/android/camera/one/v2/common/zoom/ZoomModule_ProvideCropRegionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 14063
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 14062
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AFMeteringRegion_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->aFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 14067
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->aFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 14068
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFMeteringRegionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 14072
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 14071
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->aEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 14076
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->aEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 14077
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAEMeteringRegionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 14080
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFModeFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    .line 14082
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    .line 14083
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFModeParameterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFModeParameterProvider:Ljavax/inject/Provider;

    .line 14085
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14087
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14086
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAeLockParameterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAeLockParameterProvider:Ljavax/inject/Provider;

    .line 14091
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14092
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16900(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14093
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14095
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    .line 14090
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/common/ControlModeSelector_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->controlModeSelectorProvider:Ljavax/inject/Provider;

    .line 14097
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->controlModeSelectorProvider:Ljavax/inject/Provider;

    .line 14098
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideControlModeSelectorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideControlModeSelectorProvider:Ljavax/inject/Provider;

    .line 14103
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14104
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16900(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14105
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14106
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 14102
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->controlSceneModeSelectorProvider:Ljavax/inject/Provider;

    .line 14108
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->controlSceneModeSelectorProvider:Ljavax/inject/Provider;

    .line 14109
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideControlSceneModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideControlSceneModeProvider:Ljavax/inject/Provider;

    .line 14114
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14115
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14116
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14117
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17200(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 14113
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/common/FlashHdrPlusBasedAEMode_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->flashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 14119
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->flashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 14120
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideFlashHdrPlusBasedAEModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFlashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 14125
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14126
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    .line 14124
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->statisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 14128
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->statisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 14129
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideStatisticsFaceDetectModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideStatisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 14132
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14134
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14133
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideExposureCompensationFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideExposureCompensationProvider:Ljavax/inject/Provider;

    .line 14136
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14138
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14137
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideWhiteBalanceModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideWhiteBalanceModeProvider:Ljavax/inject/Provider;

    .line 14140
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 14141
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegRotationFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideJpegRotationProvider:Ljavax/inject/Provider;

    .line 14144
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 14145
    invoke-static {v0}, Lcom/android/camera/one/v2/common/zoom/ZoomModule_ProvideZoomParameterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideZoomParameterProvider:Ljavax/inject/Provider;

    .line 14147
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->responseManagerImplProvider:Ljavax/inject/Provider;

    .line 14148
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule_ProvideResponseManagerRequestTransformerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideResponseManagerRequestTransformerProvider:Ljavax/inject/Provider;

    .line 14151
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 14153
    invoke-static {v0}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideDeferredViewfinderStreamFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14152
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDeferredViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 14157
    invoke-static {}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideRequestTransformerStateFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideRequestTransformerStateProvider:Ljavax/inject/Provider;

    .line 14159
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideRequestTransformerStateProvider:Ljavax/inject/Provider;

    .line 14160
    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideImageCaptureCommandRequestTransformerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageCaptureCommandRequestTransformerProvider:Ljavax/inject/Provider;

    .line 14163
    const/16 v0, 0xe

    .line 14164
    invoke-static {v0, v9}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 14165
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 14166
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFModeParameterProvider:Ljavax/inject/Provider;

    .line 14167
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAeLockParameterProvider:Ljavax/inject/Provider;

    .line 14168
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideControlModeSelectorProvider:Ljavax/inject/Provider;

    .line 14169
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideControlSceneModeProvider:Ljavax/inject/Provider;

    .line 14170
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFlashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 14171
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideStatisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 14172
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideExposureCompensationProvider:Ljavax/inject/Provider;

    .line 14173
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideWhiteBalanceModeProvider:Ljavax/inject/Provider;

    .line 14174
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideJpegRotationProvider:Ljavax/inject/Provider;

    .line 14175
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideZoomParameterProvider:Ljavax/inject/Provider;

    .line 14176
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideResponseManagerRequestTransformerProvider:Ljavax/inject/Provider;

    .line 14177
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDeferredViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 14178
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageCaptureCommandRequestTransformerProvider:Ljavax/inject/Provider;

    .line 14179
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 14180
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfObservableOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 14182
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    check-cast v0, Ldagger/internal/DelegateFactory;

    .line 14184
    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfRequestTransformerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfListenableFutureOfRequestTransformerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfObservableOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 14186
    invoke-static {v1, v2, v3}, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule_ProvideDefaultRequestTemplateFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    .line 14185
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 14190
    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    invoke-virtual {v0, v1}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 14193
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14195
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14194
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/SimpleConvergence3A_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->simpleConvergence3AProvider:Ljavax/inject/Provider;

    .line 14197
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14199
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14198
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/SimultaneousConvergence3A_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->simultaneousConvergence3AProvider:Ljavax/inject/Provider;

    .line 14201
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14203
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->simpleConvergence3AProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->simultaneousConvergence3AProvider:Ljavax/inject/Provider;

    .line 14202
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_Provide3AConvergenceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    .line 14207
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14209
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14208
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->metadataValidatorUtilProvider:Ljavax/inject/Provider;

    .line 14211
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->metadataValidatorUtilProvider:Ljavax/inject/Provider;

    .line 14212
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideCancellationValidatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCancellationValidatorProvider:Ljavax/inject/Provider;

    .line 14215
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->metadataValidatorUtilProvider:Ljavax/inject/Provider;

    .line 14216
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideLegacyValidatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLegacyValidatorProvider:Ljavax/inject/Provider;

    .line 14218
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->metadataValidatorUtilProvider:Ljavax/inject/Provider;

    .line 14219
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideFlashPhotoValidatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFlashPhotoValidatorProvider:Ljavax/inject/Provider;

    .line 14222
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->metadataValidatorUtilProvider:Ljavax/inject/Provider;

    .line 14223
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideRegularPhotoValidatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideRegularPhotoValidatorProvider:Ljavax/inject/Provider;

    .line 14226
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->metadataValidatorUtilProvider:Ljavax/inject/Provider;

    .line 14227
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideNpfReprocessingValidatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideNpfReprocessingValidatorProvider:Ljavax/inject/Provider;

    .line 14231
    invoke-static {v11, v10}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCancellationValidatorProvider:Ljavax/inject/Provider;

    .line 14232
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLegacyValidatorProvider:Ljavax/inject/Provider;

    .line 14233
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFlashPhotoValidatorProvider:Ljavax/inject/Provider;

    .line 14234
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideRegularPhotoValidatorProvider:Ljavax/inject/Provider;

    .line 14235
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideNpfReprocessingValidatorProvider:Ljavax/inject/Provider;

    .line 14236
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 14237
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfFlowValidatorProvider:Ljavax/inject/Provider;

    .line 14239
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14241
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfFlowValidatorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14243
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 14244
    invoke-static {}, Lcom/android/camera/util/app/AppUtilsModule_ProvideApplicationVersionFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    .line 14240
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->imageSaverTraceValidatorProvider:Ljavax/inject/Provider;

    .line 14250
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->imageSaverTraceValidatorProvider:Ljavax/inject/Provider;

    .line 14251
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideValidationProcessorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideValidationProcessorProvider:Ljavax/inject/Provider;

    .line 14255
    invoke-static {v9, v10}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideValidationProcessorProvider:Ljavax/inject/Provider;

    .line 14256
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 14257
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfImageSaverTraceProcessorProvider:Ljavax/inject/Provider;

    .line 14259
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfImageSaverTraceProcessorProvider:Ljavax/inject/Provider;

    .line 14260
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl_Factory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->factoryProvider:Ljavax/inject/Provider;

    .line 14262
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->factoryProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/TraceModule_ProvideTracerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideTracerProvider:Ljavax/inject/Provider;

    .line 14264
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14267
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14268
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideTracerProvider:Ljavax/inject/Provider;

    .line 14265
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->yuvImageBackendImageSaverProvider:Ljavax/inject/Provider;

    .line 14271
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14275
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->yuvImageBackendImageSaverProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14277
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 14273
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14272
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    .line 14280
    invoke-static {}, Lcom/android/camera/one/v2/photo/ImageCaptureThreshold_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    .line 14282
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14284
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14285
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    .line 14283
    invoke-static/range {v0 .. v7}, Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->singleFlashCommandFactoryProvider:Ljavax/inject/Provider;

    .line 14293
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14295
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14296
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFlashIndicatorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->singleFlashCommandFactoryProvider:Ljavax/inject/Provider;

    .line 14294
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/photo/commands/AutoFlashCommandSwitcherFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->autoFlashCommandSwitcherFactoryProvider:Ljavax/inject/Provider;

    .line 14300
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14302
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    .line 14301
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->defaultZslRingBufferPolicyProvider:Ljavax/inject/Provider;

    .line 14305
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14307
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14308
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->defaultZslRingBufferPolicyProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14314
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v7

    .line 14306
    invoke-static/range {v0 .. v7}, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->singleZslCommandFactoryProvider:Ljavax/inject/Provider;

    .line 14316
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14318
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14319
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    .line 14317
    invoke-static/range {v0 .. v7}, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->singleNoFlashCommandFactoryProvider:Ljavax/inject/Provider;

    .line 14327
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->autoFlashCommandSwitcherFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->singleZslCommandFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->singleNoFlashCommandFactoryProvider:Ljavax/inject/Provider;

    .line 14328
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/photo/PictureTakerModules_Zsl_ProvideImageCaptureCommandFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 14333
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14338
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageCaptureCommandProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideRequestTransformerStateProvider:Ljavax/inject/Provider;

    .line 14335
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvidePictureTakerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14334
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->providePictureTakerProvider:Ljavax/inject/Provider;

    .line 14342
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 14346
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/ActiveScanRequestBuilder_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 14343
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->aeAfActiveScannerProvider:Ljavax/inject/Provider;

    .line 14349
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    .line 14351
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideScheduledExecutorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14350
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideScheduledExecutorProvider:Ljavax/inject/Provider;

    .line 14354
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14357
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14358
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 14355
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFHoldSecondsFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFHoldSecondsProvider:Ljavax/inject/Provider;

    .line 14360
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideScheduledExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFHoldSecondsProvider:Ljavax/inject/Provider;

    .line 14361
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideResettingDelayedExecutorFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideResettingDelayedExecutorProvider:Ljavax/inject/Provider;

    .line 14364
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14368
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 14369
    invoke-static {}, Lcom/android/camera/one/Settings3A_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->aeAfActiveScannerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideResettingDelayedExecutorProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14374
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v9, v9, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14375
    invoke-static {v9}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v9

    .line 14365
    invoke-static/range {v0 .. v9}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->touchToFocusImplProvider:Ljavax/inject/Provider;

    .line 14377
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideResettingDelayedExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14381
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    .line 14384
    invoke-static {}, Lcom/android/camera/one/Settings3A_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->aeAfActiveScannerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v7, v7, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14386
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14387
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 14378
    invoke-static/range {v0 .. v8}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->touchToFocusSmartImplProvider:Ljavax/inject/Provider;

    .line 14389
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14393
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14394
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->touchToFocusImplProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->touchToFocusSmartImplProvider:Ljavax/inject/Provider;

    .line 14391
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14390
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFControlProvider:Ljavax/inject/Provider;

    .line 14401
    invoke-static {}, Lcom/android/camera/one/v2/photo/PictureTakerModules_NullStateTrackerModule_ProvideImageCaptureStateTrackerFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    .line 14399
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageCaptureStateTrackerProvider:Ljavax/inject/Provider;

    .line 14403
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageCaptureStateTrackerProvider:Ljavax/inject/Provider;

    .line 14405
    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideCaptureStateFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14404
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureStateProvider:Ljavax/inject/Provider;

    .line 14408
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 14409
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/preview/PreviewCommand_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->previewCommandProvider:Ljavax/inject/Provider;

    .line 14412
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->previewCommandProvider:Ljavax/inject/Provider;

    .line 14414
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewRunnableFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14413
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->providePreviewRunnableProvider:Ljavax/inject/Provider;

    .line 14417
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14421
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->providePreviewRunnableProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14424
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14425
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 14418
    invoke-static/range {v0 .. v6}, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideBurstCaptureCommandFactoryProvider:Ljavax/inject/Provider;

    .line 14427
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14430
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvSoftwareProcessingModule_ProvideBurstImageSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14428
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideBurstImageSaverProvider:Ljavax/inject/Provider;

    .line 14432
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14434
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideBurstImageSaverProvider:Ljavax/inject/Provider;

    .line 14433
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/imagesaver/burst/ImageBackendBasedBurstProcessor_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->imageBackendBasedBurstProcessorProvider:Ljavax/inject/Provider;

    .line 14437
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14440
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideAsyncReprocessableImageSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14438
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAsyncReprocessableImageSaverProvider:Ljavax/inject/Provider;

    .line 14442
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAsyncReprocessableImageSaverProvider:Ljavax/inject/Provider;

    .line 14445
    invoke-static {}, Lcom/android/camera/burst/BurstModule_ProvideReprocessingParametersFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 14443
    invoke-static {v0, v1}, Lcom/android/camera/burst/BurstModule_ProvideFrameSaverFactoryFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameSaverFactoryProvider:Ljavax/inject/Provider;

    .line 14447
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideBurstCaptureCommandFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->imageBackendBasedBurstProcessorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameSaverFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14453
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 14448
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideBurstProcessingParametersProvider:Ljavax/inject/Provider;

    .line 14455
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14457
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideBurstProcessingParametersProvider:Ljavax/inject/Provider;

    .line 14456
    invoke-static {v0, v1}, Lcom/android/camera/burst/BurstModule_ProvideBurstRegistrationStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideBurstRegistrationStartTaskProvider:Ljavax/inject/Provider;

    .line 14460
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 14461
    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule_ProvideCaptureSessionStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureSessionStartTaskProvider:Ljavax/inject/Provider;

    .line 14464
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    .line 14465
    invoke-static {v0}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule_ProvideFirstFrameListenerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFirstFrameListenerProvider:Ljavax/inject/Provider;

    .line 14468
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 14469
    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule_ProvideSurfacePreparerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideSurfacePreparerProvider:Ljavax/inject/Provider;

    .line 14472
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideSurfacePreparerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->providePreparableImageSourceProvider:Ljavax/inject/Provider;

    .line 14473
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSurfacePrepareStartTaskFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideSurfacePrepareStartTaskProvider:Ljavax/inject/Provider;

    .line 14479
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 14480
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround_TorchResetCommand_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->torchResetCommandProvider:Ljavax/inject/Provider;

    .line 14483
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->torchResetCommandProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14487
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 14484
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround_TorchResetTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->torchResetTaskProvider:Ljavax/inject/Provider;

    .line 14489
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14492
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 14491
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideReadyStateLoggingStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14490
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideReadyStateLoggingStartTaskProvider:Ljavax/inject/Provider;

    .line 14496
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 14497
    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule_ProvideDeferredSessionFutureFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDeferredSessionFutureProvider:Ljavax/inject/Provider;

    .line 14500
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->previewCommandProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideDeferredSessionFutureProvider:Ljavax/inject/Provider;

    .line 14501
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->providePreviewStartTaskProvider:Ljavax/inject/Provider;

    .line 14508
    const/4 v0, 0x7

    .line 14509
    invoke-static {v0, v10}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideBurstRegistrationStartTaskProvider:Ljavax/inject/Provider;

    .line 14510
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureSessionStartTaskProvider:Ljavax/inject/Provider;

    .line 14511
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFirstFrameListenerProvider:Ljavax/inject/Provider;

    .line 14512
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideSurfacePrepareStartTaskProvider:Ljavax/inject/Provider;

    .line 14513
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->torchResetTaskProvider:Ljavax/inject/Provider;

    .line 14514
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideReadyStateLoggingStartTaskProvider:Ljavax/inject/Provider;

    .line 14515
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->providePreviewStartTaskProvider:Ljavax/inject/Provider;

    .line 14516
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 14517
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfStartTaskProvider:Ljavax/inject/Provider;

    .line 14519
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->setOfStartTaskProvider:Ljavax/inject/Provider;

    .line 14521
    invoke-static {v0}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideCameraStarterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14520
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCameraStarterProvider:Ljavax/inject/Provider;

    .line 14523
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 14524
    invoke-static {v0}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFacesFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2URB5EHGM8OBKC4NMCOB3CKNKCOB3CL26AT35CDQ6IRRE9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFacesProvider:Ljavax/inject/Provider;

    .line 14528
    invoke-static {}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_NoOpMeteringModule_ProvideMeteringDataFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    .line 14527
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideMeteringDataProvider:Ljavax/inject/Provider;

    .line 14530
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14533
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->providePictureTakerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 14535
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFControlProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 14537
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    .line 14539
    invoke-static {}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_NoOpMeteringModule_ProvideAutoFlashHdrPlusNotificationFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCaptureStateProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideCameraStarterProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFacesProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideMeteringDataProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    iget-object v12, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 14531
    invoke-static/range {v0 .. v12}, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->genericOneCameraProvider:Ljavax/inject/Provider;

    .line 14547
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->genericOneCameraProvider:Ljavax/inject/Provider;

    .line 14549
    invoke-static {v0}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule_ProvideOneCameraFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 14548
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideOneCameraProvider:Ljavax/inject/Provider;

    .line 12720
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;B)V
    .locals 0

    .prologue
    .line 12362
    invoke-direct {p0, p1, p2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;)V

    return-void
.end method


# virtual methods
.method public final oneCamera()Lcom/android/camera/one/OneCamera;
    .locals 1

    .prologue
    .line 13554
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;->provideOneCameraProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera;

    return-object v0
.end method
