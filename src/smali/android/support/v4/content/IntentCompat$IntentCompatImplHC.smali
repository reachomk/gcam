.class Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;
.super Landroid/support/v4/content/ContextCompatApi21;
.source "IntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/IntentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntentCompatImplHC"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/content/ContextCompatApi21;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 1076
    invoke-direct {p0}, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;-><init>()V

    return-void
.end method


# virtual methods
.method public final makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 68
    .line 1024
    invoke-static {p1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    return-object v0
.end method
