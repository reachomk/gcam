.class final Lcom/google/android/apps/refocus/RefocusModule$2;
.super Ljava/lang/Object;
.source "RefocusModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/RefocusModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/refocus/RefocusModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/RefocusModule;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule$2;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$2;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$700(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/RefocusProgressView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/RefocusProgressView;->setWarning(Z)V

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$2;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$600(Lcom/google/android/apps/refocus/RefocusModule;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a023b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    return-void
.end method
