.class final Lcom/android/camera/ui/ButtonManager$1;
.super Ljava/lang/Object;
.source "ButtonManager.java"

# interfaces
.implements Lcom/android/camera/widget/OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ButtonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/ButtonManager;

.field private synthetic val$button:Lcom/android/camera/widget/CameraSwitchButton;

.field private synthetic val$cb:Lcom/android/camera/ui/ButtonManager$ButtonCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ButtonManager;Lcom/android/camera/widget/CameraSwitchButton;Lcom/android/camera/ui/ButtonManager$ButtonCallback;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/camera/ui/ButtonManager$1;->this$0:Lcom/android/camera/ui/ButtonManager;

    iput-object p2, p0, Lcom/android/camera/ui/ButtonManager$1;->val$button:Lcom/android/camera/widget/CameraSwitchButton;

    iput-object p3, p0, Lcom/android/camera/ui/ButtonManager$1;->val$cb:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final stateChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR94KLC___(I)V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager$1;->this$0:Lcom/android/camera/ui/ButtonManager;

    invoke-static {v0}, Lcom/android/camera/ui/ButtonManager;->access$000(Lcom/android/camera/ui/ButtonManager;)Lcom/android/camera/ui/controller/CameraFacingStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->toggleCamera()V

    .line 415
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager$1;->this$0:Lcom/android/camera/ui/ButtonManager;

    invoke-static {v0}, Lcom/android/camera/ui/ButtonManager;->access$200(Lcom/android/camera/ui/ButtonManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ButtonManager$1;->this$0:Lcom/android/camera/ui/ButtonManager;

    .line 416
    invoke-static {v1}, Lcom/android/camera/ui/ButtonManager;->access$100(Lcom/android/camera/ui/ButtonManager;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    .line 415
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->setValueByIndex(Ljava/lang/String;Ljava/lang/String;I)V

    .line 417
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager$1;->this$0:Lcom/android/camera/ui/ButtonManager;

    .line 418
    invoke-static {v0}, Lcom/android/camera/ui/ButtonManager;->access$200(Lcom/android/camera/ui/ButtonManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ButtonManager$1;->this$0:Lcom/android/camera/ui/ButtonManager;

    invoke-static {v1}, Lcom/android/camera/ui/ButtonManager;->access$100(Lcom/android/camera/ui/ButtonManager;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 423
    iget-object v1, p0, Lcom/android/camera/ui/ButtonManager$1;->val$button:Lcom/android/camera/widget/CameraSwitchButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/CameraSwitchButton;->setEnabled(Z)V

    .line 424
    iget-object v1, p0, Lcom/android/camera/ui/ButtonManager$1;->val$cb:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/camera/ui/ButtonManager$1;->val$cb:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/ButtonManager$ButtonCallback;->onStateChanged(I)V

    .line 427
    :cond_0
    return-void
.end method
