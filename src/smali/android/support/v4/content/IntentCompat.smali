.class public final Landroid/support/v4/content/IntentCompat;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;
    }
.end annotation


# static fields
.field private static final IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FCDNMST35DPQ2UIBEEHIMST23DTMN0OBK4H4MST35DPQ46RRDE1GN8IBDE1M3M___:Landroid/support/v4/content/ContextCompatApi21;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 87
    new-instance v0, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;-><init>(B)V

    sput-object v0, Landroid/support/v4/content/IntentCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FCDNMST35DPQ2UIBEEHIMST23DTMN0OBK4H4MST35DPQ46RRDE1GN8IBDE1M3M___:Landroid/support/v4/content/ContextCompatApi21;

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v0, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;

    invoke-direct {v0}, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;-><init>()V

    sput-object v0, Landroid/support/v4/content/IntentCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FCDNMST35DPQ2UIBEEHIMST23DTMN0OBK4H4MST35DPQ46RRDE1GN8IBDE1M3M___:Landroid/support/v4/content/ContextCompatApi21;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Landroid/support/v4/content/ContextCompatApi21;

    invoke-direct {v0}, Landroid/support/v4/content/ContextCompatApi21;-><init>()V

    sput-object v0, Landroid/support/v4/content/IntentCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FCDNMST35DPQ2UIBEEHIMST23DTMN0OBK4H4MST35DPQ46RRDE1GN8IBDE1M3M___:Landroid/support/v4/content/ContextCompatApi21;

    goto :goto_0
.end method

.method public static makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Landroid/support/v4/content/IntentCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FCDNMST35DPQ2UIBEEHIMST23DTMN0OBK4H4MST35DPQ46RRDE1GN8IBDE1M3M___:Landroid/support/v4/content/ContextCompatApi21;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/ContextCompatApi21;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
