.class final Lcom/android/camera/burst/editor/AddCreationFabMenu$2;
.super Ljava/lang/Object;
.source "AddCreationFabMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/AddCreationFabMenu;->onBurstEditorCreated(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/AddCreationFabMenu;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$2;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$2;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-static {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->access$100(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$2;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-static {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->access$200(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$2;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-static {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->access$300(Lcom/android/camera/burst/editor/AddCreationFabMenu;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$2;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-static {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->access$400(Lcom/android/camera/burst/editor/AddCreationFabMenu;)V

    goto :goto_0
.end method
