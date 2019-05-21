.class final Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$6;
.super Ljava/lang/Object;
.source "FilmstripBottomPanelControllerImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;-><init>(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;Lcom/android/camera/settings/SettingsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$6;->this$0:Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$6;->this$0:Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->access$200(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$6;->this$0:Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->access$200(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;->onProgressErrorClicked()V

    .line 164
    :cond_0
    return-void
.end method
