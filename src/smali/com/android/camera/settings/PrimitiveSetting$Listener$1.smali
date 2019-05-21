.class final Lcom/android/camera/settings/PrimitiveSetting$Listener$1;
.super Ljava/lang/Object;
.source "PrimitiveSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/settings/PrimitiveSetting$Listener;->onSettingChanged$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6JB1DPGMEPBI7D66KOBMC4NMOOBECSNL6T3ID5N6EEP9AO______(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/settings/PrimitiveSetting$Listener;

.field private synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/settings/PrimitiveSetting$Listener;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/settings/PrimitiveSetting$Listener$1;->this$1:Lcom/android/camera/settings/PrimitiveSetting$Listener;

    iput-object p2, p0, Lcom/android/camera/settings/PrimitiveSetting$Listener$1;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting$Listener$1;->this$1:Lcom/android/camera/settings/PrimitiveSetting$Listener;

    invoke-static {v0}, Lcom/android/camera/settings/PrimitiveSetting$Listener;->access$200(Lcom/android/camera/settings/PrimitiveSetting$Listener;)Lcom/google/android/apps/camera/async/Updatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/settings/PrimitiveSetting$Listener$1;->val$newValue:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
