.class public final Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;
.super Ljava/lang/Object;
.source "VolumeKeyController.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnKeyDown;
.implements Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnKeyUp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;,
        Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;,
        Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;
    }
.end annotation


# instance fields
.field private isActive:Z

.field private listener:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final resources:Landroid/content/res/Resources;

.field private final volumeAction:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/google/android/apps/camera/async/Observable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->listener:Lcom/google/common/base/Optional;

    .line 74
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->resources:Landroid/content/res/Resources;

    .line 75
    new-instance v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;-><init>(Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/google/android/apps/camera/async/Observable;)V

    iput-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->volumeAction:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->resources:Landroid/content/res/Resources;

    return-object v0
.end method


# virtual methods
.method public final activate()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->isActive:Z

    .line 150
    return-void
.end method

.method public final deactivate()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->isActive:Z

    .line 154
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/16 v3, 0x19

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 88
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    if-eq p1, v3, :cond_0

    move v0, v1

    .line 114
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->isActive:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 93
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->volumeAction:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;

    invoke-virtual {v0}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    invoke-virtual {v0}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 114
    goto :goto_0

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->listener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->listener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    invoke-interface {v0, v2}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;->triggerShutter(Z)V

    :cond_2
    move v0, v2

    .line 101
    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->listener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    if-ne p1, v3, :cond_4

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->listener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    invoke-interface {v0, v2}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;->zoomOut(Z)V

    :cond_3
    :goto_1
    move v0, v2

    .line 110
    goto :goto_0

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->listener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    invoke-interface {v0, v2}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;->zoomIn(Z)V

    goto :goto_1

    :pswitch_2
    move v0, v1

    .line 112
    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/16 v3, 0x19

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    if-eq p1, v3, :cond_0

    move v0, v1

    .line 145
    :goto_0
    return v0

    .line 123
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->isActive:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 124
    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->volumeAction:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;

    invoke-virtual {v0}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    invoke-virtual {v0}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 145
    goto :goto_0

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->listener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->listener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;->triggerShutter(Z)V

    :cond_2
    move v0, v2

    .line 132
    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->listener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    if-ne p1, v3, :cond_4

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->listener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;->zoomOut(Z)V

    :cond_3
    :goto_1
    move v0, v2

    .line 141
    goto :goto_0

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->listener:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;->zoomIn(Z)V

    goto :goto_1

    :pswitch_2
    move v0, v1

    .line 143
    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setListener(Lcom/google/common/base/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    iput-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->listener:Lcom/google/common/base/Optional;

    .line 84
    return-void
.end method
