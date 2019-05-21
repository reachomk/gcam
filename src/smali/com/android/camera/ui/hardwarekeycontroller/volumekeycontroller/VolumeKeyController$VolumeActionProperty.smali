.class final Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;
.super Lcom/google/android/apps/camera/async/TransformedProperty;
.source "VolumeKeyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VolumeActionProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedProperty",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

.field private final volumeModeToSetting:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;->this$0:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 46
    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/async/TransformedProperty;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 37
    sget-object v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->SHUTTER:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    iget-object v1, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;->this$0:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 39
    invoke-static {v1}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->access$000(Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->ZOOM:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    iget-object v3, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;->this$0:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 41
    invoke-static {v3}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->access$000(Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->NOOP:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    iget-object v5, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;->this$0:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 43
    invoke-static {v5}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->access$000(Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;->volumeModeToSetting:Lcom/google/common/collect/BiMap;

    .line 47
    return-void
.end method


# virtual methods
.method protected final synthetic transformInput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, Ljava/lang/String;

    .line 2051
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;->volumeModeToSetting:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    .line 2052
    if-eqz v0, :cond_0

    .line 2053
    :goto_0
    return-object v0

    .line 2056
    :cond_0
    sget-object v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->SHUTTER:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    goto :goto_0
.end method

.method protected final synthetic transformOutput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    .line 1061
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeActionProperty;->volumeModeToSetting:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    return-object v0
.end method
