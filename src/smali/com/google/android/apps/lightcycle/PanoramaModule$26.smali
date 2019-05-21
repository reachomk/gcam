.class final Lcom/google/android/apps/lightcycle/PanoramaModule$26;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/ui/AbstractTutorialOverlay$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustPhotoSphereHelpOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$26;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTutorialCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1628
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$26;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOBGE0NK6OBDCLP62GB3EHKNCQBKF51MURJKE9NMOR35E8TG____(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    .line 1629
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "photosphere_show_help_overlay"

    .line 1630
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1631
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$26;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0, v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$5102(Lcom/google/android/apps/lightcycle/PanoramaModule;Z)Z

    .line 1634
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$26;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->onPreviewVisibilityChanged(I)V

    .line 1635
    return-void
.end method
