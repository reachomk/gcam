.class final Lcom/android/camera/tinyplanet/TinyPlanetFragment$3;
.super Ljava/lang/Object;
.source "TinyPlanetFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/tinyplanet/TinyPlanetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$3;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$3;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0, p2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$900(Lcom/android/camera/tinyplanet/TinyPlanetFragment;I)V

    .line 224
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 214
    return-void
.end method
