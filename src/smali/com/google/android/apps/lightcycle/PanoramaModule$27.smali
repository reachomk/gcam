.class final Lcom/google/android/apps/lightcycle/PanoramaModule$27;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->stop()V
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
    .line 1731
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$27;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$27;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->cancelDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$27;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->cancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$27;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->fisheyeConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1738
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$27;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->fisheyeConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1740
    :cond_1
    return-void
.end method
