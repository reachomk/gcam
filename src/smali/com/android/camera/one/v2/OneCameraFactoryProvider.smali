.class public interface abstract Lcom/android/camera/one/v2/OneCameraFactoryProvider;
.super Ljava/lang/Object;
.source "OneCameraFactoryProvider.java"


# virtual methods
.method public abstract configureOneCameraFactory$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UP35EPKM6P9F8DGMQPBIC526ATJ9CDIKQRR4ELM6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUJRECL1M2RB5E9GK8PBGCLN68PBECDKMASQDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UJRECL1M2RB5E9GL6PBKEHKMSPRJ9LNM8TBCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRLEHKMOBQGD5HN8TBICL1MURJ6D5JNASJ1EHKMURIDDTI7AR357CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR3DTN6CQB75T7MSPA3C5MMASJ18PGM6T3FE9SJM___(Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;Lcom/google/android/gms/internal/zzahv;Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;Lcom/android/camera/one/v2/util/PictureConfigurationModule;)Lcom/android/camera/one/v2/config/OneCameraFactory;
.end method

.method public abstract createCameraActivityComponent(Lcom/android/camera/activity/gca/GcaActivityModule;Lcom/google/android/apps/camera/inject/activity/ActivityModule;Lcom/android/camera/stats/ActivityInstrumentationModule;)Lcom/android/camera/activity/main/CameraActivityComponent;
.end method

.method public abstract createViewerActivityComponent(Lcom/android/camera/activity/gca/GcaActivityModule;Lcom/google/android/apps/camera/inject/activity/ActivityModule;)Lcom/google/android/apps/refocus/ViewerActivityComponent;
.end method

.method public abstract inject(Lcom/android/camera/activity/gca/GcaActivity;)V
.end method

.method public abstract inject(Lcom/android/camera/activity/main/CameraActivity;)V
.end method

.method public abstract inject(Lcom/android/camera/app/CameraApp;)V
.end method

.method public abstract inject(Lcom/android/camera/prewarm/NoOpPrewarmService;)V
.end method

.method public abstract inject(Lcom/android/camera/processing/ProcessingService;)V
.end method

.method public abstract inject(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V
.end method

.method public abstract inject(Lcom/android/camera/settings/CameraSettingsActivity;)V
.end method

.method public abstract inject(Lcom/android/camera/settings/ManagedSwitchPreference;)V
.end method

.method public abstract inject(Lcom/android/camera/ui/BottomBarSideControls;)V
.end method

.method public abstract inject(Lcom/android/camera/ui/TopRightWeightedLayout;)V
.end method

.method public abstract inject(Lcom/android/camera/ui/focus/FocusRingView;)V
.end method
