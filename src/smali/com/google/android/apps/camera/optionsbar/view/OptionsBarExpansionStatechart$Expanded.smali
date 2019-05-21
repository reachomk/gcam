.class Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Expanded;
.super Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionState;
.source "OptionsBarExpansionStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Expanded"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Expanded;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionState;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Expanded;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->access$600(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)Landroid/animation/Animator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 113
    return-void
.end method
