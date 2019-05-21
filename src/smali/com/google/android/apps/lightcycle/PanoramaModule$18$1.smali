.class final Lcom/google/android/apps/lightcycle/PanoramaModule$18$1;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/google/android/apps/lightcycle/PanoramaModule$18;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule$18;)V
    .locals 0

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$18$1;->this$1:Lcom/google/android/apps/lightcycle/PanoramaModule$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$18$1;->this$1:Lcom/google/android/apps/lightcycle/PanoramaModule$18;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/PanoramaModule$18;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$4500(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    .line 1329
    return-void
.end method
