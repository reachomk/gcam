.class public Lcom/android/camera/app/LegacyCameraProviderModule;
.super Ljava/lang/Object;
.source "LegacyCameraProviderModule.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 2803
    iput-object p1, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6O91H60TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM8OBKC4NKCQBCDLPN8SJ9E14N8PBD7CKLC___(Lcom/android/camera/app/LegacyCameraProviderModule;Lcom/android/camera/data/FilmstripItem;)V
    .locals 0

    .prologue
    .line 3803
    invoke-direct {p0, p1}, Lcom/android/camera/app/LegacyCameraProviderModule;->share(Lcom/android/camera/data/FilmstripItem;)V

    return-void
.end method

.method private getCurrentDataId()I
    .locals 1

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController;->getCurrentAdapterIndex()I

    move-result v0

    return v0
.end method

.method private getCurrentLocalData()Lcom/android/camera/data/FilmstripItem;
    .locals 2

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/app/LegacyCameraProviderModule;->getCurrentDataId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    return-object v0
.end method

.method private getShareIntentByData(Lcom/android/camera/data/FilmstripItem;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 2940
    const/4 v0, 0x0

    .line 2941
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 2942
    iget-object v2, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v2}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3100(Lcom/android/camera/app/CameraActivityControllerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2944
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/Metadata;->isPanorama360()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v3, v4, :cond_1

    .line 2945
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2946
    sget-object v2, Lcom/android/camera/storage/MimeType;->PHOTOSPHERE:Lcom/android/camera/storage/MimeType;

    invoke-virtual {v2}, Lcom/android/camera/storage/MimeType;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2947
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2957
    :cond_0
    :goto_0
    return-object v0

    .line 2948
    :cond_1
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemAttributes;->canShare()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2949
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 2950
    invoke-static {v0}, Lcom/android/camera/app/LegacyCameraProviderModule;->getShareIntentFromType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2952
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2953
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2955
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private static getShareIntentFromType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 2968
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2969
    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2970
    const-string v0, "video/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2978
    :goto_0
    return-object v1

    .line 2972
    :cond_0
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2973
    const-string v0, "image/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2975
    :cond_1
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unsupported mimeType "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private share(Lcom/android/camera/data/FilmstripItem;)V
    .locals 2

    .prologue
    .line 2915
    invoke-direct {p0, p1}, Lcom/android/camera/app/LegacyCameraProviderModule;->getShareIntentByData(Lcom/android/camera/data/FilmstripItem;)Landroid/content/Intent;

    move-result-object v0

    .line 2916
    if-eqz v0, :cond_0

    .line 2918
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->launchActivityByIntent(Landroid/content/Intent;)V

    .line 2919
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2200(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->setShareEnabled(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2924
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onDelete()V
    .locals 6

    .prologue
    .line 2873
    invoke-direct {p0}, Lcom/android/camera/app/LegacyCameraProviderModule;->getCurrentDataId()I

    move-result v0

    .line 2874
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2876
    invoke-static {v2, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2300(Lcom/android/camera/app/CameraActivityControllerImpl;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2879
    invoke-static {v5, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2400(Lcom/android/camera/app/CameraActivityControllerImpl;I)F

    move-result v5

    .line 2875
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    .line 2880
    iget-object v1, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2900(Lcom/android/camera/app/CameraActivityControllerImpl;I)V

    .line 2881
    return-void
.end method

.method public onDetails()V
    .locals 2

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    iget-object v1, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripViewController;->getCurrentAdapterIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2800(Lcom/android/camera/app/CameraActivityControllerImpl;I)V

    .line 2869
    return-void
.end method

.method public onEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2841
    invoke-direct {p0}, Lcom/android/camera/app/LegacyCameraProviderModule;->getCurrentLocalData()Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 2842
    if-nez v0, :cond_0

    .line 2843
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot edit null data."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    :goto_0
    return-void

    .line 2846
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/app/LegacyCameraProviderModule;->getCurrentDataId()I

    move-result v1

    .line 2847
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2849
    invoke-static {v3, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2300(Lcom/android/camera/app/CameraActivityControllerImpl;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2852
    invoke-static {v4, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2400(Lcom/android/camera/app/CameraActivityControllerImpl;I)F

    move-result v1

    .line 2848
    invoke-virtual {v2, v3, v5, v5, v1}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    .line 2853
    iget-object v1, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2500(Lcom/android/camera/app/CameraActivityControllerImpl;Lcom/android/camera/data/FilmstripItem;)V

    goto :goto_0
.end method

.method public onExternalViewer()V
    .locals 4

    .prologue
    .line 2811
    invoke-direct {p0}, Lcom/android/camera/app/LegacyCameraProviderModule;->getCurrentLocalData()Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 2812
    if-nez v0, :cond_1

    .line 2813
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot open null data."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2837
    :cond_0
    :goto_0
    return-void

    .line 2816
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 2817
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v1, v2, :cond_2

    .line 2818
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot open empty URL."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2822
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/Metadata;->usePanoramaViewer()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v2}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1900(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2823
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1900(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2000(Lcom/android/camera/app/CameraActivityControllerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->showPanorama(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 2824
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/Metadata;->hasRgbzData()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2825
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1900(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->showRgbz(Landroid/net/Uri;)V

    .line 2826
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2100(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_should_show_refocus_viewer_cling"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2828
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2100(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_should_show_refocus_viewer_cling"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2830
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2200(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;->removeRefocusCling()V

    goto :goto_0

    .line 2832
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/Metadata;->hasBurstData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2834
    check-cast v0, Lcom/android/camera/data/BurstItem;

    .line 2835
    iget-object v1, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->showBurstEditor(Lcom/android/camera/data/BurstItem;)V

    goto/16 :goto_0
.end method

.method public onProgressErrorClicked()V
    .locals 3

    .prologue
    .line 2983
    invoke-direct {p0}, Lcom/android/camera/app/LegacyCameraProviderModule;->getCurrentLocalData()Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 2984
    if-nez v0, :cond_0

    .line 2985
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProgressErrorClicked with empty item"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2990
    :goto_0
    return-void

    .line 2988
    :cond_0
    iget-object v1, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-virtual {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->getServices$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2ORKD5R6IT3P5THMURJ6D5JIUGR1DLIN4OAJCLP7CQB3CLPJM___()Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/session/CaptureSessionManager;->removeErrorMessage(Landroid/net/Uri;)V

    .line 2989
    iget-object v1, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3200(Lcom/android/camera/app/CameraActivityControllerImpl;Lcom/android/camera/data/FilmstripItem;)V

    goto :goto_0
.end method

.method public onShare()V
    .locals 7

    .prologue
    .line 2885
    invoke-direct {p0}, Lcom/android/camera/app/LegacyCameraProviderModule;->getCurrentLocalData()Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 2886
    if-nez v0, :cond_0

    .line 2887
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot share null data."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    :goto_0
    return-void

    .line 2891
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/app/LegacyCameraProviderModule;->getCurrentDataId()I

    move-result v1

    .line 2892
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2894
    invoke-static {v3, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2300(Lcom/android/camera/app/CameraActivityControllerImpl;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2897
    invoke-static {v6, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2400(Lcom/android/camera/app/CameraActivityControllerImpl;I)F

    move-result v1

    .line 2893
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    .line 2910
    invoke-direct {p0, v0}, Lcom/android/camera/app/LegacyCameraProviderModule;->share(Lcom/android/camera/data/FilmstripItem;)V

    goto :goto_0
.end method

.method public onTinyPlanet()V
    .locals 2

    .prologue
    .line 2858
    invoke-direct {p0}, Lcom/android/camera/app/LegacyCameraProviderModule;->getCurrentLocalData()Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 2859
    if-nez v0, :cond_0

    .line 2860
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot edit tiny planet on null data."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    :goto_0
    return-void

    .line 2863
    :cond_0
    iget-object v1, p0, Lcom/android/camera/app/LegacyCameraProviderModule;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1, v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2600(Lcom/android/camera/app/CameraActivityControllerImpl;Lcom/android/camera/data/FilmstripItem;)V

    goto :goto_0
.end method
