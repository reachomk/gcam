.class final Lcom/android/camera/burst/editor/AddCreationFabMenu$6;
.super Ljava/lang/Object;
.source "AddCreationFabMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/AddCreationFabMenu;->addCreationType(Lcom/android/camera/burst/postprocessing/CreationType;II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

.field private synthetic val$creationType:Lcom/android/camera/burst/postprocessing/CreationType;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/AddCreationFabMenu;Lcom/android/camera/burst/postprocessing/CreationType;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$6;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    iput-object p2, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$6;->val$creationType:Lcom/android/camera/burst/postprocessing/CreationType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$6;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-static {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->access$700(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$6;->val$creationType:Lcom/android/camera/burst/postprocessing/CreationType;

    invoke-interface {v0, v1}, Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;->onCreate(Lcom/android/camera/burst/postprocessing/CreationType;)V

    .line 382
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$6;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-static {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->access$400(Lcom/android/camera/burst/editor/AddCreationFabMenu;)V

    .line 383
    return-void
.end method
