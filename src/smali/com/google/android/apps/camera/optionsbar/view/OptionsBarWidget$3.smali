.class final Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$3;
.super Ljava/lang/Object;
.source "OptionsBarWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;

.field private synthetic val$expandedLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$3;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;

    iput-object p2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$3;->val$expandedLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v1, 0x7f110107

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$3;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->access$100(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$3;->val$expandedLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$3;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->access$000(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$3;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;

    invoke-static {v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->access$200(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$3;->val$expandedLayout:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->expand(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 297
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$3;->val$expandedLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
