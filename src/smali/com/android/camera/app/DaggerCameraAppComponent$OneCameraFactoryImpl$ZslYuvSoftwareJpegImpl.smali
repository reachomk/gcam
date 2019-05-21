.class final Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;
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
    name = "ZslYuvSoftwareJpegImpl"
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

    .line 7591
    iput-object p1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7592
    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    .line 7593
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    .line 7594
    new-instance v0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    invoke-direct {v0}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 8602
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8604
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8603
    invoke-static {v0}, Lcom/android/camera/burst/BurstModule_ProvideBurstDeregistrationShutdownTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideBurstDeregistrationShutdownTaskProvider:Ljavax/inject/Provider;

    .line 8607
    invoke-static {v9, v9}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideBurstDeregistrationShutdownTaskProvider:Ljavax/inject/Provider;

    .line 8608
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 8610
    invoke-static {}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideDefaultShutdownTaskSetFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 8609
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 8611
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfShutdownTaskProvider:Ljavax/inject/Provider;

    .line 8616
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfShutdownTaskProvider:Ljavax/inject/Provider;

    .line 8615
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8614
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->twoStageShutdownProvider:Ljavax/inject/Provider;

    .line 8618
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->twoStageShutdownProvider:Ljavax/inject/Provider;

    .line 8620
    invoke-static {v0}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideLifetimeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8619
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    .line 8622
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->twoStageShutdownProvider:Ljavax/inject/Provider;

    .line 8624
    invoke-static {v0}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideDelayedShutdownFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8623
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    .line 8626
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    .line 8631
    invoke-static {}, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCameraCommandExecutorFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8632
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8633
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8634
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 8628
    invoke-static/range {v0 .. v5}, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8627
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    .line 8637
    invoke-static {}, Lcom/android/camera/one/v2/common/ResponseManagerImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->responseManagerImplProvider:Ljavax/inject/Provider;

    .line 8639
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->responseManagerImplProvider:Ljavax/inject/Provider;

    .line 8640
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule_ProvideResponseManagerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    .line 8643
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8646
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8647
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    .line 8645
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/flash/AutoFlashIndicator_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8644
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->autoFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 8649
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->autoFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 8651
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/flash/FlashModule_ProvideFlashIndicatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8650
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 8654
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8655
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$15900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->bindImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 8657
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8662
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->bindImageSourceFactoryProvider:Ljavax/inject/Provider;

    .line 8659
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8658
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    .line 8665
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    .line 8667
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvidePreparableImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8666
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->providePreparableImageSourceProvider:Ljavax/inject/Provider;

    .line 8670
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->providePreparableImageSourceProvider:Ljavax/inject/Provider;

    .line 8672
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideImageSourceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8671
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageSourceProvider:Ljavax/inject/Provider;

    .line 8675
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageSourceProvider:Ljavax/inject/Provider;

    .line 8677
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/FrameAllocatorModules_LargeFrameAllocatorModule_ProvideFrameAllocatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8676
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    .line 8680
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8682
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8681
    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->frameRequestProcessorFactoryProvider:Ljavax/inject/Provider;

    .line 8684
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8686
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8687
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8688
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8689
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 8685
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureSessionSurfaceProvider:Ljavax/inject/Provider;

    .line 8691
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    .line 8692
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideLargeSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLargeSurfaceProvider:Ljavax/inject/Provider;

    .line 8695
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLargeSurfaceProvider:Ljavax/inject/Provider;

    .line 8696
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSurfaceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideSurfaceProvider:Ljavax/inject/Provider;

    .line 8699
    invoke-static {v9, v9}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureSessionSurfaceProvider:Ljavax/inject/Provider;

    .line 8700
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideSurfaceProvider:Ljavax/inject/Provider;

    .line 8701
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 8702
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->forStreamConfigSetOfSurfaceProvider:Ljavax/inject/Provider;

    .line 8704
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8707
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8708
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16200(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8709
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 8706
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideViewfinderStreamConfigFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8705
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 8711
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 8712
    invoke-static {v0}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideViewfinderStreamConfigSetFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideViewfinderStreamConfigSetProvider:Ljavax/inject/Provider;

    .line 8716
    invoke-static {v9, v10}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideViewfinderStreamConfigSetProvider:Ljavax/inject/Provider;

    .line 8717
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 8718
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->forStreamConfigSetOfAsyncStreamConfigProvider:Ljavax/inject/Provider;

    .line 8720
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->forStreamConfigSetOfSurfaceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->forStreamConfigSetOfAsyncStreamConfigProvider:Ljavax/inject/Provider;

    .line 8721
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_NoStreamSharing_ProvideDefaultStreamConfigFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDefaultStreamConfigProvider:Ljavax/inject/Provider;

    .line 8724
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8728
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDefaultStreamConfigProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8730
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8731
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v5, v5, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8732
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8733
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v7, v7, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8734
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8735
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$3200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 8726
    invoke-static/range {v0 .. v8}, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule_ProvideCaptureSessionCreatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8725
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 8737
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 8738
    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule_ProvideCaptureSessionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureSessionProvider:Ljavax/inject/Provider;

    .line 8741
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->frameRequestProcessorFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureSessionProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8747
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 8743
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8742
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideRootFrameRequestProcessorProvider:Ljavax/inject/Provider;

    .line 8749
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideRootFrameRequestProcessorProvider:Ljavax/inject/Provider;

    .line 8751
    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideFrameServerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8750
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    .line 8754
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    .line 8756
    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideCaptureFrameServerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8755
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    .line 8759
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    .line 8762
    invoke-static {}, Lcom/google/android/apps/camera/aaa/AfStateMonitorImpl_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 8761
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFStateMonitorFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8760
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    .line 8766
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    .line 8765
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerImpl_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->afStateResponseListenerImplProvider:Ljavax/inject/Provider;

    .line 8771
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    .line 8770
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/autofocus/AfStateResponseListenerNexus2016Impl_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->afStateResponseListenerNexus2016ImplProvider:Ljavax/inject/Provider;

    .line 8774
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8777
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8778
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->afStateResponseListenerImplProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->afStateResponseListenerNexus2016ImplProvider:Ljavax/inject/Provider;

    .line 8775
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAfRequestTransformerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 8782
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8785
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8786
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8787
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 8783
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideSceneChangeRequestTransformerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideSceneChangeRequestTransformerProvider:Ljavax/inject/Provider;

    .line 8789
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/FocusMonitor_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 8791
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 8792
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideFocusMonitorRequestTransformerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFocusMonitorRequestTransformerProvider:Ljavax/inject/Provider;

    .line 8795
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 8797
    invoke-static {v0}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceResponseListenerFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2URB5EHGM8OBKC4NMCOB3CKNKCOB3CL26AT35CDQ6IRRE9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8796
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFaceResponseListenerProvider:Ljavax/inject/Provider;

    .line 8799
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFaceResponseListenerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8802
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 8800
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceRequestTransformerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFaceRequestTransformerProvider:Ljavax/inject/Provider;

    .line 8805
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/one/v2/common/FrameClock_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ldagger/MembersInjector;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->frameClockProvider:Ljavax/inject/Provider;

    .line 8807
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->frameClockProvider:Ljavax/inject/Provider;

    .line 8808
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideFrameClockFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameClockProvider:Ljavax/inject/Provider;

    .line 8810
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8812
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8813
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    .line 8811
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->jpegThumbnailParametersImplProvider:Ljavax/inject/Provider;

    .line 8817
    invoke-static {}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->jpegThumbnailParametersImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8819
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 8816
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegThumbnailFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideJpegThumbnailProvider:Ljavax/inject/Provider;

    .line 8821
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8823
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8822
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/ViewfinderJankLogger_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->viewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 8825
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->viewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 8826
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideViewfinderJankLoggerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideViewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 8832
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideInstrumentationFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    .line 8831
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvidePreviewPerformanceSessionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8830
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->providePreviewPerformanceSessionProvider:Ljavax/inject/Provider;

    .line 8834
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->providePreviewPerformanceSessionProvider:Ljavax/inject/Provider;

    .line 8835
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/ViewfinderJankRecorder_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->viewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 8837
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->viewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 8838
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideViewfinderJankRecorderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideViewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 8841
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->providePreviewPerformanceSessionProvider:Ljavax/inject/Provider;

    .line 8842
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/ViewfinderStartupRecorder_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->viewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 8844
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->viewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 8845
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideViewfinderStartupRecorderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideViewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 8848
    const/4 v0, 0x3

    .line 8849
    invoke-static {v0, v10}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideViewfinderJankLoggerProvider:Ljavax/inject/Provider;

    .line 8850
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideViewfinderJankRecorderProvider:Ljavax/inject/Provider;

    .line 8851
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideViewfinderStartupRecorderProvider:Ljavax/inject/Provider;

    .line 8852
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 8853
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfSequentialFrameProcessorProvider:Ljavax/inject/Provider;

    .line 8855
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfSequentialFrameProcessorProvider:Ljavax/inject/Provider;

    .line 8856
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideFrameSequencerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameSequencerProvider:Ljavax/inject/Provider;

    .line 8861
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    .line 8862
    invoke-static {}, Lcom/android/camera/stats/AppInstrumentationModule_ProvideUsageStatisticsFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8863
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 8860
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/stats/CaptureFailureLogger_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->captureFailureLoggerProvider:Ljavax/inject/Provider;

    .line 8865
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->captureFailureLoggerProvider:Ljavax/inject/Provider;

    .line 8866
    invoke-static {v0}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule_ProvideFailureLoggerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFailureLoggerProvider:Ljavax/inject/Provider;

    .line 8869
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageSourceProvider:Ljavax/inject/Provider;

    .line 8870
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideImageReaderFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    .line 8872
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8874
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8875
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    .line 8873
    invoke-static {v0, v1}, Lcom/android/camera/util/ImageRotationCalculator_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 8876
    new-instance v0, Ldagger/internal/DelegateFactory;

    invoke-direct {v0}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 8878
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8881
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageReaderProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 8880
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/advice/AdviceFrameRetrievalCommand_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8879
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->adviceFrameRetrievalCommandProvider:Ljavax/inject/Provider;

    .line 8890
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8891
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->adviceFrameRetrievalCommandProvider:Ljavax/inject/Provider;

    .line 8889
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/advice/AdvicePreviewListener_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8888
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->advicePreviewListenerProvider:Ljavax/inject/Provider;

    .line 8895
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->advicePreviewListenerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8899
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8900
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 8897
    invoke-static {v0, v1, v2}, Lcom/android/camera/advice/AdviceModules_OneCameraAdviceModule_ProvideAdvicePreviewListenerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8896
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAdvicePreviewListenerProvider:Ljavax/inject/Provider;

    .line 8903
    invoke-static {v11, v11}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 8904
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideSceneChangeRequestTransformerProvider:Ljavax/inject/Provider;

    .line 8905
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFocusMonitorRequestTransformerProvider:Ljavax/inject/Provider;

    .line 8906
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFaceRequestTransformerProvider:Ljavax/inject/Provider;

    .line 8907
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameClockProvider:Ljavax/inject/Provider;

    .line 8908
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 8909
    invoke-static {}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegQualityFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideJpegThumbnailProvider:Ljavax/inject/Provider;

    .line 8910
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameSequencerProvider:Ljavax/inject/Provider;

    .line 8911
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFailureLoggerProvider:Ljavax/inject/Provider;

    .line 8912
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAdvicePreviewListenerProvider:Ljavax/inject/Provider;

    .line 8913
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 8914
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 8916
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 8918
    invoke-static {v0}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideLazyViewfinderStreamFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8917
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLazyViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 8922
    invoke-static {v10, v9}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLazyViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 8923
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 8924
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfListenableFutureOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 8927
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideMeteringParametersFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    .line 8931
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8932
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16800(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8933
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 8930
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->zoomedCropRegionProvider:Ljavax/inject/Provider;

    .line 8935
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->zoomedCropRegionProvider:Ljavax/inject/Provider;

    .line 8936
    invoke-static {v0}, Lcom/android/camera/one/v2/common/zoom/ZoomModule_ProvideCropRegionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 8940
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 8939
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AFMeteringRegion_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->aFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 8944
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->aFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 8945
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFMeteringRegionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 8949
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 8948
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->aEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 8953
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->aEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 8954
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAEMeteringRegionFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 8957
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFModeFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    .line 8959
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    .line 8960
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFModeParameterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFModeParameterProvider:Ljavax/inject/Provider;

    .line 8962
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 8964
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 8963
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAeLockParameterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAeLockParameterProvider:Ljavax/inject/Provider;

    .line 8968
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8969
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16900(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8970
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8972
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v4

    .line 8967
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/common/ControlModeSelector_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->controlModeSelectorProvider:Ljavax/inject/Provider;

    .line 8974
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->controlModeSelectorProvider:Ljavax/inject/Provider;

    .line 8975
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideControlModeSelectorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideControlModeSelectorProvider:Ljavax/inject/Provider;

    .line 8980
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8981
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16900(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8982
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8983
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 8979
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->controlSceneModeSelectorProvider:Ljavax/inject/Provider;

    .line 8985
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->controlSceneModeSelectorProvider:Ljavax/inject/Provider;

    .line 8986
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideControlSceneModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideControlSceneModeProvider:Ljavax/inject/Provider;

    .line 8991
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8992
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8993
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 8994
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17200(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v3

    .line 8990
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/common/FlashHdrPlusBasedAEMode_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->flashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 8996
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->flashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 8997
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideFlashHdrPlusBasedAEModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFlashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 9002
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9003
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    .line 9001
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode_Factory;->create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->statisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 9005
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->statisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 9006
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideStatisticsFaceDetectModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideStatisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 9009
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9011
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9010
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideExposureCompensationFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideExposureCompensationProvider:Ljavax/inject/Provider;

    .line 9013
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9015
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9014
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideWhiteBalanceModeFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideWhiteBalanceModeProvider:Ljavax/inject/Provider;

    .line 9017
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 9018
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegRotationFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideJpegRotationProvider:Ljavax/inject/Provider;

    .line 9021
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCropRegionProvider:Ljavax/inject/Provider;

    .line 9022
    invoke-static {v0}, Lcom/android/camera/one/v2/common/zoom/ZoomModule_ProvideZoomParameterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideZoomParameterProvider:Ljavax/inject/Provider;

    .line 9024
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->responseManagerImplProvider:Ljavax/inject/Provider;

    .line 9025
    invoke-static {v0}, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule_ProvideResponseManagerRequestTransformerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideResponseManagerRequestTransformerProvider:Ljavax/inject/Provider;

    .line 9028
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideViewfinderStreamConfigProvider:Ljavax/inject/Provider;

    .line 9030
    invoke-static {v0}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule_ProvideDeferredViewfinderStreamFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9029
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDeferredViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 9034
    invoke-static {}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideRequestTransformerStateFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideRequestTransformerStateProvider:Ljavax/inject/Provider;

    .line 9036
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideRequestTransformerStateProvider:Ljavax/inject/Provider;

    .line 9037
    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideImageCaptureCommandRequestTransformerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageCaptureCommandRequestTransformerProvider:Ljavax/inject/Provider;

    .line 9040
    const/16 v0, 0xe

    .line 9041
    invoke-static {v0, v9}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFMeteringRegionProvider:Ljavax/inject/Provider;

    .line 9042
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAEMeteringRegionProvider:Ljavax/inject/Provider;

    .line 9043
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFModeParameterProvider:Ljavax/inject/Provider;

    .line 9044
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAeLockParameterProvider:Ljavax/inject/Provider;

    .line 9045
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideControlModeSelectorProvider:Ljavax/inject/Provider;

    .line 9046
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideControlSceneModeProvider:Ljavax/inject/Provider;

    .line 9047
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFlashHdrPlusBasedAEModeProvider:Ljavax/inject/Provider;

    .line 9048
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideStatisticsFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 9049
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideExposureCompensationProvider:Ljavax/inject/Provider;

    .line 9050
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideWhiteBalanceModeProvider:Ljavax/inject/Provider;

    .line 9051
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideJpegRotationProvider:Ljavax/inject/Provider;

    .line 9052
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideZoomParameterProvider:Ljavax/inject/Provider;

    .line 9053
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideResponseManagerRequestTransformerProvider:Ljavax/inject/Provider;

    .line 9054
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDeferredViewfinderStreamProvider:Ljavax/inject/Provider;

    .line 9055
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageCaptureCommandRequestTransformerProvider:Ljavax/inject/Provider;

    .line 9056
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 9057
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfObservableOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 9059
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    check-cast v0, Ldagger/internal/DelegateFactory;

    .line 9061
    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfRequestTransformerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfListenableFutureOfRequestTransformerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfObservableOfRequestTransformerProvider:Ljavax/inject/Provider;

    .line 9063
    invoke-static {v1, v2, v3}, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule_ProvideDefaultRequestTemplateFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    .line 9062
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 9067
    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    invoke-virtual {v0, v1}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 9070
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9072
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9071
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/SimpleConvergence3A_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->simpleConvergence3AProvider:Ljavax/inject/Provider;

    .line 9074
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9076
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9075
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/SimultaneousConvergence3A_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->simultaneousConvergence3AProvider:Ljavax/inject/Provider;

    .line 9078
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9080
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->simpleConvergence3AProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->simultaneousConvergence3AProvider:Ljavax/inject/Provider;

    .line 9079
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_Provide3AConvergenceFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    .line 9084
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9086
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9085
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->metadataValidatorUtilProvider:Ljavax/inject/Provider;

    .line 9088
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->metadataValidatorUtilProvider:Ljavax/inject/Provider;

    .line 9089
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideCancellationValidatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCancellationValidatorProvider:Ljavax/inject/Provider;

    .line 9092
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->metadataValidatorUtilProvider:Ljavax/inject/Provider;

    .line 9093
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideLegacyValidatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLegacyValidatorProvider:Ljavax/inject/Provider;

    .line 9095
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->metadataValidatorUtilProvider:Ljavax/inject/Provider;

    .line 9096
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideFlashPhotoValidatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFlashPhotoValidatorProvider:Ljavax/inject/Provider;

    .line 9099
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->metadataValidatorUtilProvider:Ljavax/inject/Provider;

    .line 9100
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideRegularPhotoValidatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideRegularPhotoValidatorProvider:Ljavax/inject/Provider;

    .line 9103
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->metadataValidatorUtilProvider:Ljavax/inject/Provider;

    .line 9104
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideNpfReprocessingValidatorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideNpfReprocessingValidatorProvider:Ljavax/inject/Provider;

    .line 9108
    invoke-static {v11, v10}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCancellationValidatorProvider:Ljavax/inject/Provider;

    .line 9109
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLegacyValidatorProvider:Ljavax/inject/Provider;

    .line 9110
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFlashPhotoValidatorProvider:Ljavax/inject/Provider;

    .line 9111
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideRegularPhotoValidatorProvider:Ljavax/inject/Provider;

    .line 9112
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideNpfReprocessingValidatorProvider:Ljavax/inject/Provider;

    .line 9113
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 9114
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfFlowValidatorProvider:Ljavax/inject/Provider;

    .line 9116
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9118
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfFlowValidatorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9120
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 9121
    invoke-static {}, Lcom/android/camera/util/app/AppUtilsModule_ProvideApplicationVersionFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    .line 9117
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->imageSaverTraceValidatorProvider:Ljavax/inject/Provider;

    .line 9127
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->imageSaverTraceValidatorProvider:Ljavax/inject/Provider;

    .line 9128
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideValidationProcessorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideValidationProcessorProvider:Ljavax/inject/Provider;

    .line 9132
    invoke-static {v9, v10}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideValidationProcessorProvider:Ljavax/inject/Provider;

    .line 9133
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 9134
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfImageSaverTraceProcessorProvider:Ljavax/inject/Provider;

    .line 9136
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfImageSaverTraceProcessorProvider:Ljavax/inject/Provider;

    .line 9137
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl_Factory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->factoryProvider:Ljavax/inject/Provider;

    .line 9139
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->factoryProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/trace/TraceModule_ProvideTracerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideTracerProvider:Ljavax/inject/Provider;

    .line 9141
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9144
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9145
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideTracerProvider:Ljavax/inject/Provider;

    .line 9142
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->yuvImageBackendImageSaverProvider:Ljavax/inject/Provider;

    .line 9148
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9152
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$8500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->yuvImageBackendImageSaverProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9154
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 9150
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9149
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    .line 9157
    invoke-static {}, Lcom/android/camera/one/v2/photo/ImageCaptureThreshold_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    .line 9159
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9161
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9162
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    .line 9160
    invoke-static/range {v0 .. v7}, Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->singleFlashCommandFactoryProvider:Ljavax/inject/Provider;

    .line 9170
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9172
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9173
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFlashIndicatorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->singleFlashCommandFactoryProvider:Ljavax/inject/Provider;

    .line 9171
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/photo/commands/AutoFlashCommandSwitcherFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->autoFlashCommandSwitcherFactoryProvider:Ljavax/inject/Provider;

    .line 9177
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9179
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    .line 9178
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->defaultZslRingBufferPolicyProvider:Ljavax/inject/Provider;

    .line 9182
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9184
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9185
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->defaultZslRingBufferPolicyProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9191
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v7

    .line 9183
    invoke-static/range {v0 .. v7}, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->singleZslCommandFactoryProvider:Ljavax/inject/Provider;

    .line 9193
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9195
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9196
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provide3AConvergenceProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageSaverProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->imageCaptureThresholdProvider:Ljavax/inject/Provider;

    .line 9194
    invoke-static/range {v0 .. v7}, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->singleNoFlashCommandFactoryProvider:Ljavax/inject/Provider;

    .line 9204
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->autoFlashCommandSwitcherFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->singleZslCommandFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->singleNoFlashCommandFactoryProvider:Ljavax/inject/Provider;

    .line 9205
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/photo/PictureTakerModules_Zsl_ProvideImageCaptureCommandFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 9210
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9215
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageCaptureCommandProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideRequestTransformerStateProvider:Ljavax/inject/Provider;

    .line 9212
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvidePictureTakerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9211
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->providePictureTakerProvider:Ljavax/inject/Provider;

    .line 9219
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 9223
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/ActiveScanRequestBuilder_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 9220
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->aeAfActiveScannerProvider:Ljavax/inject/Provider;

    .line 9226
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDelayedShutdownProvider:Ljavax/inject/Provider;

    .line 9228
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideScheduledExecutorFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9227
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideScheduledExecutorProvider:Ljavax/inject/Provider;

    .line 9231
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9234
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9235
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 9232
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFHoldSecondsFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFHoldSecondsProvider:Ljavax/inject/Provider;

    .line 9237
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideScheduledExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFHoldSecondsProvider:Ljavax/inject/Provider;

    .line 9238
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideResettingDelayedExecutorFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideResettingDelayedExecutorProvider:Ljavax/inject/Provider;

    .line 9241
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9245
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    .line 9246
    invoke-static {}, Lcom/android/camera/one/Settings3A_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->aeAfActiveScannerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideResettingDelayedExecutorProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9251
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v9, v9, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9252
    invoke-static {v9}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v9

    .line 9242
    invoke-static/range {v0 .. v9}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->touchToFocusImplProvider:Ljavax/inject/Provider;

    .line 9254
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFModeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideResettingDelayedExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9258
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideMeteringParametersProvider:Ljavax/inject/Provider;

    .line 9261
    invoke-static {}, Lcom/android/camera/one/Settings3A_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->aeAfActiveScannerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v7, v7, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9263
    invoke-static {v7}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$16600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v8, v8, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9264
    invoke-static {v8}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$9900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 9255
    invoke-static/range {v0 .. v8}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->touchToFocusSmartImplProvider:Ljavax/inject/Provider;

    .line 9266
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->autoFocusModule:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9270
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9271
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->touchToFocusImplProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->touchToFocusSmartImplProvider:Ljavax/inject/Provider;

    .line 9268
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9267
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFControlProvider:Ljavax/inject/Provider;

    .line 9278
    invoke-static {}, Lcom/android/camera/one/v2/photo/PictureTakerModules_NullStateTrackerModule_ProvideImageCaptureStateTrackerFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    .line 9276
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageCaptureStateTrackerProvider:Ljavax/inject/Provider;

    .line 9280
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageCaptureStateTrackerProvider:Ljavax/inject/Provider;

    .line 9282
    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideCaptureStateFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9281
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureStateProvider:Ljavax/inject/Provider;

    .line 9285
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameServerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    .line 9286
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/preview/PreviewCommand_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->previewCommandProvider:Ljavax/inject/Provider;

    .line 9289
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->previewCommandProvider:Ljavax/inject/Provider;

    .line 9291
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewRunnableFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9290
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->providePreviewRunnableProvider:Ljavax/inject/Provider;

    .line 9294
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureFrameServerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9298
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameAllocatorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->providePreviewRunnableProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9301
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v6, v6, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9302
    invoke-static {v6}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 9295
    invoke-static/range {v0 .. v6}, Lcom/android/camera/burst/BurstModule_ProvideBurstCaptureCommandFactoryFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideBurstCaptureCommandFactoryProvider:Ljavax/inject/Provider;

    .line 9304
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9307
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvSoftwareProcessingModule_ProvideBurstImageSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9305
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideBurstImageSaverProvider:Ljavax/inject/Provider;

    .line 9309
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9311
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10200(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideBurstImageSaverProvider:Ljavax/inject/Provider;

    .line 9310
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/imagesaver/burst/ImageBackendBasedBurstProcessor_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->imageBackendBasedBurstProcessorProvider:Ljavax/inject/Provider;

    .line 9314
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9317
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$17400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideAsyncReprocessableImageSaverFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9315
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAsyncReprocessableImageSaverProvider:Ljavax/inject/Provider;

    .line 9319
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAsyncReprocessableImageSaverProvider:Ljavax/inject/Provider;

    .line 9322
    invoke-static {}, Lcom/android/camera/burst/BurstModule_ProvideReprocessingParametersFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    .line 9320
    invoke-static {v0, v1}, Lcom/android/camera/burst/BurstModule_ProvideFrameSaverFactoryFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameSaverFactoryProvider:Ljavax/inject/Provider;

    .line 9324
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideBurstCaptureCommandFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->imageBackendBasedBurstProcessorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFrameSaverFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v4, v4, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9330
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 9325
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideBurstProcessingParametersProvider:Ljavax/inject/Provider;

    .line 9332
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9334
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$17300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideBurstProcessingParametersProvider:Ljavax/inject/Provider;

    .line 9333
    invoke-static {v0, v1}, Lcom/android/camera/burst/BurstModule_ProvideBurstRegistrationStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideBurstRegistrationStartTaskProvider:Ljavax/inject/Provider;

    .line 9337
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 9338
    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule_ProvideCaptureSessionStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureSessionStartTaskProvider:Ljavax/inject/Provider;

    .line 9341
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideResponseManagerProvider:Ljavax/inject/Provider;

    .line 9342
    invoke-static {v0}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule_ProvideFirstFrameListenerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFirstFrameListenerProvider:Ljavax/inject/Provider;

    .line 9345
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 9346
    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule_ProvideSurfacePreparerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideSurfacePreparerProvider:Ljavax/inject/Provider;

    .line 9349
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->largeImageReaderModule:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideSurfacePreparerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideSharedImageReaderProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->providePreparableImageSourceProvider:Ljavax/inject/Provider;

    .line 9350
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSurfacePrepareStartTaskFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideSurfacePrepareStartTaskProvider:Ljavax/inject/Provider;

    .line 9356
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v0, v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9359
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2500(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideImageCaptureCommandProvider:Ljavax/inject/Provider;

    .line 9358
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule_ProvideReadyStateLoggingStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9357
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideReadyStateLoggingStartTaskProvider:Ljavax/inject/Provider;

    .line 9363
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureSessionCreatorProvider:Ljavax/inject/Provider;

    .line 9364
    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule_ProvideDeferredSessionFutureFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDeferredSessionFutureProvider:Ljavax/inject/Provider;

    .line 9367
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->previewCommandProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDefaultRequestTemplateProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideDeferredSessionFutureProvider:Ljavax/inject/Provider;

    .line 9368
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->providePreviewStartTaskProvider:Ljavax/inject/Provider;

    .line 9375
    const/4 v0, 0x6

    .line 9376
    invoke-static {v0, v10}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideBurstRegistrationStartTaskProvider:Ljavax/inject/Provider;

    .line 9377
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureSessionStartTaskProvider:Ljavax/inject/Provider;

    .line 9378
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFirstFrameListenerProvider:Ljavax/inject/Provider;

    .line 9379
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideSurfacePrepareStartTaskProvider:Ljavax/inject/Provider;

    .line 9380
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideReadyStateLoggingStartTaskProvider:Ljavax/inject/Provider;

    .line 9381
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->providePreviewStartTaskProvider:Ljavax/inject/Provider;

    .line 9382
    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 9383
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfStartTaskProvider:Ljavax/inject/Provider;

    .line 9385
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->setOfStartTaskProvider:Ljavax/inject/Provider;

    .line 9387
    invoke-static {v0}, Lcom/android/camera/one/v2/lifecycle/LifecycleModule_ProvideCameraStarterFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9386
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCameraStarterProvider:Ljavax/inject/Provider;

    .line 9389
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->faceDetectionModule:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 9390
    invoke-static {v0}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFacesFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2URB5EHGM8OBKC4NMCOB3CKNKCOB3CL26AT35CDQ6IRRE9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFacesProvider:Ljavax/inject/Provider;

    .line 9394
    invoke-static {}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_NoOpMeteringModule_ProvideMeteringDataFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v0

    .line 9393
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideMeteringDataProvider:Ljavax/inject/Provider;

    .line 9396
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v1, v1, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9399
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->providePictureTakerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    iget-object v3, v3, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 9401
    invoke-static {v3}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFControlProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;

    .line 9403
    invoke-static {v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->access$16300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;

    move-result-object v5

    .line 9405
    invoke-static {}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_NoOpMeteringModule_ProvideAutoFlashHdrPlusNotificationFactory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCaptureStateProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideCameraStarterProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFacesProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideMeteringDataProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideAFStateMonitorProvider:Ljavax/inject/Provider;

    iget-object v12, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideFlashIndicatorProvider:Ljavax/inject/Provider;

    .line 9397
    invoke-static/range {v0 .. v12}, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->genericOneCameraProvider:Ljavax/inject/Provider;

    .line 9413
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->genericOneCameraProvider:Ljavax/inject/Provider;

    .line 9415
    invoke-static {v0}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule_ProvideOneCameraFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 9414
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideOneCameraProvider:Ljavax/inject/Provider;

    .line 7597
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;B)V
    .locals 0

    .prologue
    .line 7244
    invoke-direct {p0, p1, p2}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;)V

    return-void
.end method


# virtual methods
.method public final oneCamera()Lcom/android/camera/one/OneCamera;
    .locals 1

    .prologue
    .line 8420
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;->provideOneCameraProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera;

    return-object v0
.end method
